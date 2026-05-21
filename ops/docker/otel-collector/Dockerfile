FROM otel/opentelemetry-collector-contrib:0.152.1@sha256:fa1f6ea8dabd3042fabf4411eed7fa52f253edd8940140bec89a573e62a24eb7
COPY config.yml /etc/otelcol-contrib/config.yaml

ENTRYPOINT ["/otelcol-contrib"]
CMD ["--config", "/etc/otelcol-contrib/config.yaml"]
