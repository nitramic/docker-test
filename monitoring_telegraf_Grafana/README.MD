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