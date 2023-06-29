# Atento, todavia no funciona con el actual

### Primero debemos correr el docker registry con la siguiente variable de entorno (-e REGISTRY_STORAGE_DELETE_ENABLED=true) para que nos deje borrar las imagenes alojadas
### Adicionalmente aca se le suman los certificados


docker run -d -p 5000:5000 --restart=always --name registry   -v /certs:/certs -e REGISTRY_STORAGE_DELETE_ENABLED=true  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt   -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key   registry:2


registry='localhost:5000'
name='my-image'
curl -v -sSL -X DELETE "http://${registry}/v2/${name}/manifests/$(
    curl -sSL -I \
        -H "Accept: application/vnd.docker.distribution.manifest.v2+json" \
        "http://${registry}/v2/${name}/manifests/$(
            curl -sSL "http://${registry}/v2/${name}/tags/list" | jq -r '.tags[0]'
        )" \
    | awk '$1 == "Docker-Content-Digest:" { print $2 }' \
    | tr -d $'\r' \
)"

#####

curl http://192.168.1.121:5000/v2/nevalabs/fr_web_api/tags/list
curl http://localhost:5000/v2/zucchetti/tags/list


curl -v http://192.168.1.121:5000/v2/nevalabs/fr_web_api/manifests/3.3.0-alpha.22 -H 'Accept: application/vnd.docker.distribution.manifest.v2+json'
curl -v http://localhost:5000/v2/zucchetti/tmv01 -H 'Accept: application/vnd.docker.distribution.manifest.v2+json'
curl -v http://localhost:5000/v2/zucchetti/tmv01/manifests -H 'Accept: application/vnd.docker.distribution.manifest.v2+json'

curl -X DELETE http://192.168.1.121:5000/v2/nevalabs/fr_web_api/manifests/sha256:bf0573ad563716a3f8ff48bb118e5ebf3d7bbdb329dfe8665fa7982b81da31f3 -v 