FROM grafana/tempo:main-1ba8723

USER root

COPY tempo.yaml /etc/tempo.yaml

RUN chown 10001:10001 /var/tempo
#RUN chown 10001:10001 /etc/tempo

USER 10001:10001

CMD ["tempo", "-config.file=/etc/tempo.yaml"]

EXPOSE 3200

