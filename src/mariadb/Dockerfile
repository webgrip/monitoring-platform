FROM mariadb:11.4.2-ubi9
ENV MYSQL_ROOT_PASSWORD=mysecretpassword

# Expose the MariaDB port
EXPOSE 3306

# Add a database initialization script
COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/
COPY ./my.cnf /etc/my.cnf

CMD ["mysqld"]
