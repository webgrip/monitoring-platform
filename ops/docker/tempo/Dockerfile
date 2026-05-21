FROM grafana/tempo:main-1ba8723@sha256:f389e2ea65669d0be3e9e14df18466e78780e9f04177cc4e4ac8e527e6469284

USER root

COPY tempo.yaml /etc/tempo.yaml

RUN chown 10001:10001 /var/tempo
#RUN chown 10001:10001 /etc/tempo

USER 10001:10001

CMD ["tempo", "-config.file=/etc/tempo.yaml"]

EXPOSE 3200

