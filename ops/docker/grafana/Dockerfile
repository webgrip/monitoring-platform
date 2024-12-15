FROM grafana/grafana:11.2.2-ubuntu
LABEL maintainer="ryan@webgrip.nl"

USER root

RUN apt-get upgrade -y && apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    nano \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY custom.ini /etc/grafana/custom.ini
COPY provisioning/dashboards /etc/grafana/provisioning/dashboards
COPY provisioning/datasources /etc/grafana/provisioning/datasources

ENTRYPOINT [ "/run.sh" ]

CMD ["grafana-server", "--config=/etc/grafana/grafana.ini", "--homepath=/usr/share/grafana", "web"]

RUN chown 472:0 /etc/grafana/custom.ini
RUN chown -R 472:0 /var/lib/grafana /var/log/grafana /etc/grafana

USER 472

EXPOSE 3000
