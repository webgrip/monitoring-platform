FROM grafana/tempo@sha256:ed02991704b3cd9ef869cc117dc979c4124220c0770dc1b57a051059bfaa6122

USER root

COPY tempo.yaml /etc/tempo.yaml

RUN chown 10001:10001 /var/tempo
#RUN chown 10001:10001 /etc/tempo

USER 10001:10001

CMD ["tempo", "-config.file=/etc/tempo.yaml"]

EXPOSE 3200

