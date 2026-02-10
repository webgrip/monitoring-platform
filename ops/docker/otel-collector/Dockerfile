FROM otel/opentelemetry-collector-contrib:0.145.0
COPY config.yml /etc/otelcol-contrib/config.yaml

ENTRYPOINT ["/otelcol-contrib"]
CMD ["--config", "/etc/otelcol-contrib/config.yaml"]
