require File.expand_path('../../spec_helper', __FILE__)

permutations =
  %w(mock proxy instance_of).permutation.map { |parts| parts.join('.') }

permutations.each do |permutation|
  describe permutation, is_mock: true, is_proxy: true, is_instance_of: true do
    include_context 'mock + instance_of'
    include ProxyDefinitionCreatorHelpers

    define_method(:double_definition_creator_for) do |object, &block|
      eval(permutation + '(object, &block)')
    end
  end
end
