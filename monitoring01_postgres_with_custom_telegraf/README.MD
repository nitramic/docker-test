# Metricas a medida para monitoreo de POSTGRESQL
En este caso, para lo que necesito el bundle (paquete) de influx no me da todos los datos que necesito/quiero para tener una vision de la base de datos, por este motivo implemento un plugin externo para telegraf y asi obtener las metricas deseadas

https://github.com/influxdata/telegraf/blob/master/plugins/inputs/execd/README.md
https://github.com/srijan/telegraf-execd-pg-custom?ref=srijn.net

Repo --> https://github.com/srijan/telegraf-execd-pg-custom/tree/main