#!/bin/bash
cat <<EOF >/usr/local/tomcat/webapps/ahrw41_demo/WEB-INF/classes/DBConfig
### Auto generated file ###
JDBCConnectionURL=jdbc:postgresql://${POSTGRES_IP}:5432/${POSTGRES_DB}
JDBCDriver=org.postgresql.Driver
UserName=${POSTGRES_USER}
Password=${POSTGRES_PASSWORD}
DefaultUserTimeout=3600
EOF