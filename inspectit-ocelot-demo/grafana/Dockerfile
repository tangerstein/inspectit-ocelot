FROM grafana/grafana:7.0.1

USER root
RUN apk add unzip curl
RUN cd "$GF_PATHS_PLUGINS" && \
	mkdir grafana-influxdb-flux-datasource && \
	curl -LO https://github.com/NovatecConsulting/novatec-service-dependency-graph-panel/releases/latest/download/novatec-service-dependency-graph-panel.zip && \
	unzip novatec-service-dependency-graph-panel.zip -d ./novatec-servicegraph-panel
USER grafana
