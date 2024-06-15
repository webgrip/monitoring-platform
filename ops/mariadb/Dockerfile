FROM mariadb:11.4.2-ubi9

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