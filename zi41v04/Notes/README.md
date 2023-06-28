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

# Para que funcione
Hacer el docker compose, sumar acceso a la base, restore de la base y reload desde el tomcat manager del zi.

(Vamos por version 04 y registry local)








# Hoy exploté el fs, ver los errores y limitaciones de docker para fs (10GB?) como también ver errores propios de docker

#### EJ #####
root@docker01:/home/user/compose/zi41v04# docker push localhost:5000/zucchetti:pgv04
docker push localhost:5000/zucchetti:tmv04
The push refers to repository [localhost:5000/zucchetti]
06456ca67e73: Layer already exists
429101fda50a: Layer already exists
326f703bdbf0: Layer already exists
e1d7159fc4a1: Layer already exists
4b8691b52553: Layer already exists
521cfa298569: Layer already exists
93d620344811: Layer already exists
a09d9630f354: Layer already exists
962b4ea70ae9: Layer already exists
1fed7749a107: Layer already exists
937dbed755be: Layer already exists
f27b9d2e85eb: Layer already exists
2fd6f610b8fc: Layer already exists
0cc1f0165626: Layer already exists
pgv04: digest: sha256:ea783dd5e95b72a5bf0b874fd7980023bd2775c76f7d73e45d584c307e8d5924 size: 3245
The push refers to repository [localhost:5000/zucchetti]
cba2a2478e05: Pushed
2cfc4a887529: Retrying in 1 second
a1d879da2487: Layer already exists
54e75dd9fb59: Layer already exists
531d6ff13b78: Layer already exists
b7875b1e0d92: Layer already exists
e3b8e7e94058: Layer already exists
fe6f26e0b6c5: Layer already exists
f8fff8f16166: Layer already exists
46b0c7301b5b: Layer already exists
27b640ac5799: Layer already exists
29eb0be7e804: Layer already exists
71d1336de2c6: Layer already exists
b1b704e31e12: Layer already exists
dd23345671cc: Layer already exists
966e94ab6e16: Layer already exists
received unexpected HTTP status: 500 Internal Server Error
### FIN Ejemplo ###

Para salir de este caso en particular, como estaban los dockers + el registry server se procedio a hacer el prune de las imagenes y contenedores

user@docker01:~$ docker image prune -a -f
Deleted Images:
deleted: sha256:cb988f73c27857fed94fefe8c05a70184d589d1d060d85b5183d93fe8f159e14
untagged: localhost:5000/zucchetti:pgv04
untagged: localhost:5000/zucchetti@sha256:ea783dd5e95b72a5bf0b874fd7980023bd2775c76f7d73e45d584c307e8d5924
deleted: sha256:9d47a14b9183f95d55cb3507571324c39a58782c49dea362fe429e75a2f87d2f
untagged: localhost:5000/zucchetti:tmv04
deleted: sha256:fbecdfedda6301baf704cd5ab0657eb087dfc86079519b5c9a109426e388e936

Total reclaimed space: 0B
user@docker01:~$ docker volume prune -f
Total reclaimed space: 0B

para poder hacer el "GARBAGE COLLECTION" de esto que fue eliminado desde la consola

# docker system prune -a -f
Deleted build cache objects:
wya1uezoomvy8ci8jzr1be68i
.
.
ikag38gggwgcxu2jhk3fdet1j

Total reclaimed space: 8.511GB

#### ANTES #####
user@docker_test:~$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2        30G   30G     0 100% /


#### DESPUES ####
root@docker_test:/home/user/compose/zi41v04# df -h /
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2        30G   19G  9.0G  69% /
