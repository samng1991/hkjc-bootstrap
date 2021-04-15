FROM bitnami/fluentd:1.12.2

## Install custom Fluentd plugins
RUN fluent-gem install 'fluent-plugin-vmware-loginsight' \
    && fluent-gem install 'fluent-plugin-grepcounter' \
    && fluent-gem install 'fluent-plugin-suppress'