FROM mariadb:11.8.7-ubi9@sha256:6430bf53be5c54a0b1c71cde38c3848efa34df08982bfe3e4f4191c868a1eb5d

RUN useradd -ms /bin/bash mariadb_user

RUN mkdir -p /var/run/mysqld && \
    mkdir -p /var/log/mysql && \
    mkdir -p /etc/mysql/mysql.conf.d

RUN touch /var/log/mysql/mysql-bin.index && \
    chown -R mariadb_user:mariadb_user /var/run/mysqld /var/log/mysql /var/lib/mysql

COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/
COPY ./my.cnf.d /etc/my.cnf.d/
COPY ./my.cnf /etc/my.cnf

USER mariadb_user

CMD ["mariadbd"]