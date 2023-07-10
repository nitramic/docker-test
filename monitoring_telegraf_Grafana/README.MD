# Instalcion de grafana con telegraf

Grafana Open Source (OSS)
grafana/grafana-oss

docker volume create grafana-storage
docker run -d -p 3000:3000 --name=grafana grafana/grafana-oss

v01:
docker run -d -p 3000:3000 --name=grafana --volume grafana-storage:/var/lib/grafana grafana/grafana-oss

v02
docker run -d -p 3000:3000 --name=grafana \
-e "GF_SERVER_ROOT_URL=http://my.grafana.server/" \
-e "GF_INSTALL_PLUGINS=grafana-clock-panel, grafana-simple-json-datasource" \
--volume grafana-storage:/var/lib/grafana  \
grafana/grafana-oss

### La instalacion fue un exito, se genero sumo a grafana un data source y de ahi se genero un dashboard para visualizar los datos. 

Queda sumar (o ver como instalar el agente) para que monitoree el TOMCAT y POSTGRES, luego sumar el apache y ver si se puede monitorear el AJP entere el Front-End y la app.

cosas a monitorear en la app
Ademas del monitoreo clasido (Mem/CPU/Disco)
si responde a peticiones
Cantidad de sesiones en tomcat
tiempo de respuesta de las sesiones
Se pueden ver la sesiones colgadas?

Cosas a monitorear en el postgress
Cantidad de sesiones
I/O
Latencia

Monitorear en el hypervisor (VMEARE)
Baloon de memoria
Disco
uso de Datastore
Latencia de datastore
Se puede tomar datos fisicos del BAREMETAL en los provedores cloud o en el on-prem?
Temp/fuentes/discos Fisicos (SMART)/Placa Raid (Cache+discos)/CPU

Para ir acomodando
https://github.com/influxdata/telegraf/blob/master/plugins/inputs/postgresql_extensible/README.md


### Mas cosas piolas 
Mirar 
https://github.com/influxdata/telegraf

vsphere
https://github.com/influxdata/telegraf/tree/master/plugins/inputs/vsphere

PF sense 
https://github.com/influxdata/telegraf/blob/master/plugins/inputs/pf/README.md

