ARG WODBY_KIBANA_VERSION=7-5.16.2

FROM wodby/kibana:${WODBY_KIBANA_VERSION}

ARG KIBANA_VERSION=7.17.2
ARG ENHANCED_TABLE_VERSION=1.13.1

RUN sed -i -E 's/(test -x "\$NODE"$)/\1 || NODE=$(which node)/' /usr/share/kibana/bin/kibana-plugin; \
    /usr/share/kibana/bin/kibana-plugin install https://github.com/fbaligand/kibana-enhanced-table/releases/download/v${ENHANCED_TABLE_VERSION}/enhanced-table-${ENHANCED_TABLE_VERSION}_${KIBANA_VERSION}.zip
