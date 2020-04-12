# Task15. MySQL basic usage

FROM mysql:8

# Security issue: root password in clear text
ENV MYSQL_DATABASE=discovery \
    MYSQL_USER=discovery \
    MYSQL_PASSWORD=discovery \
    MYSQL_ROOT_PASSWORD=root

# How to avoid login/password duplication?
HEALTHCHECK --interval=1m CMD mysql -udiscovery -pdiscovery -e "SHOW DATABASES;"   

COPY createdb.sql /docker-entrypoint-initdb.d/