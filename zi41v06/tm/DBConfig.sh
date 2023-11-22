#!/bin/bash
cat <<EOF >/usr/local/tomcat/webapps/ahrw41_demo/WEB-INF/classes/DBConfig
### Auto generated file ###
JDBCConnectionURL.1=jdbc:postgresql://${POSTGRES_IP}:5432/${POSTGRES_DB}
JDBCDriver.1=org.postgresql.Driver
UserName.1=${POSTGRES_USER}
Password.1=${POSTGRES_PASSWORD}
DefaultUserTimeout=3600
EOF