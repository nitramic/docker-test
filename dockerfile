FROM postgres:14-bullseye
COPY pg/init.sql /docker-entrypoint-initdb.d/