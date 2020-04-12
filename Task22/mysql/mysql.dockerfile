FROM mysql:8

HEALTHCHECK --interval=1m CMD mysql -udiscovery -pdiscovery -e "SHOW DATABASES;"   

COPY createdb.sql /docker-entrypoint-initdb.d/