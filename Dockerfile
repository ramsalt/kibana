ARG WODBY_KIBANA_VERSION=7-5.18.5

FROM wodby/kibana:${WODBY_KIBANA_VERSION}

ARG KIBANA_VERSION=7.17.7

COPY templates /etc/gotpl
