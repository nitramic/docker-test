# move docekerfiles to make dockerbuild & create tag
EJ sudo docker build -t zi41postgres:v01 .

$ docker build -t infoservicenet/zucchetti:pgv01 .

$ docker push infoservicenet/zucchetti:pgv01 .
$ docker image push infoservicenet/zucchetti:tmv01

docker compose up &
docker compose down --volumes --rmi local

PASO a paso:
1 - Docker build apuntando al target 
    (valor "AS" dentro del dockerfile)
2 - Generar el TAG para poder subirlo al registry server
3 - Hacer el push, en este caso, a mi registry server

## Detalle del procedimiento
$ sudo docker build --target app -t infoservicenet/zucchetti:tmv02 . 
(Aca hice el sudo poruqe la app tiene permisos solo para el root)

$ docker tag infoservicenet/zucchetti:zi41tcv01 localhost:5000/zucchetti:zi41tcv01
   
$ docker tag infoservicenet/zucchetti:pgv02 localhost:5000/zucchetti:pgv02

## Aca los subo a mi repo
$ docker push infoservicenet/zucchetti:pgv02
$ docker push infoservicenet/zucchetti:tmv02

## Nota para los docker compose
En V01 sube las imagenes a Registro privado de dockerhub
En V02 sube las imagenes a Registro privado en on-prem

## Deploy 
$ docker compose up &

## Listar imagenes en el repo/registry local
curl -X GET https://myregistry:5000/v2/_catalog > {"repositories":["redis","ubuntu"]}

## EJ:
$ curl -X GET http://192.168.30.23:5000/v2/_catalog
{"repositories":["my-ubuntu","zucchetti"]}