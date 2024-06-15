FROM grafana/grafana@sha256:dcd3ae78713958a862732c3608d32c03f0c279c35a2032d74b80b12c5cdc47b8
LABEL maintainer="ryan@webgrip.nl"

USER root

RUN apt-get upgrade -y && apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    nano \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY custom.ini /etc/grafana/custom.ini
# If you have plugins to install, do it like this:
# RUN grafana-cli plugins install <plugin-name>

EXPOSE 3000

ENTRYPOINT [ "/run.sh" ]

#COPY run.sh /run.sh
#RUN chmod +x /run.sh

CMD ["grafana-server", "--config=/etc/grafana/grafana.ini", "--homepath=/usr/share/grafana", "web"]

RUN chown 472:0 /etc/grafana/custom.ini
RUN chown -R 472:0 /var/lib/grafana /var/log/grafana /etc/grafana

USER 472