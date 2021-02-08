# frozen_string_literal: true
#
# Copyright, 2018, by Samuel G. D. Williams. <http://www.codeotaku.com>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require_relative 'client'
require_relative 'endpoint'
require 'protocol/http/middleware'
require 'protocol/http/body/buffered'

module Async
	module HTTP
		class Internet
			def initialize(**options)
				@clients = {}
				@options = options
			end
			
			# A cache of clients.
			# @attribute [Hash(URI, Client)]
			attr :clients
			
			def call(method, url, headers = nil, body = nil)
				endpoint = Endpoint.parse(url)
				key = host_key(endpoint)
				
				client = @clients.fetch(key) do
					@clients[key] = self.client_for(endpoint)
				end
				
				body = Body::Buffered.wrap(body)
				headers = ::Protocol::HTTP::Headers[headers]
				
				request = ::Protocol::HTTP::Request.new(client.scheme, endpoint.authority, method, endpoint.path, nil, headers, body)
				
				return client.call(request)
			end
			
			def client_for(endpoint)
				Client.new(endpoint, **@options)
			end
			
			def close
				# The order of operations here is to avoid a race condition between iterating over clients (#close may yield) and creating new clients.
				clients = @clients.values
				@clients.clear
				
				clients.each(&:close)
			end
			
			::Protocol::HTTP::Methods.each do |name, verb|
				define_method(verb.downcase) do |url, headers = nil, body = nil|
					self.call(verb, url.to_str, headers, body)
				end
			end
			
			private
			
			def host_key(endpoint)
				url = endpoint.url.dup
				
				url.path = ""
				url.fragment = nil
				url.query = nil
				
				return url
			end
		end
	end
end
