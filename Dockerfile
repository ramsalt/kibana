ARG KIBANA_VERSION=7-5.15.5
FROM wodby/kibana:${KIBANA_VERSION}

COPY templates /etc/gotpl/
