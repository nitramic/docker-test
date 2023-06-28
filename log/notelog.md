# hacer los volumenes para los cambios persistentes
# no esta copiando los files para habilitar el acceso a tomcat
# 1- El montaje del volumen en /mnt funciona, solo que no hace la copia.
# 2- El cp es la solucion para esta version de Tomcat, solo que no lo ejecuta o cuelga el contenedro, revisar si como se puede hacer, el dockerfile no le da bolo o no ejecuta
# 3- Ver sample https://tomcat.apache.org/tomcat-9.0-doc/appdev/sample/
# 4- y el ZI? y la moto? y Candela?
# 5- probe-psi tambien se puede sumar, para no explotar el git solo se sube sample.war
# 6- se suma el db_cofig para conectar con la base de postgres (ver si no se pude poner en las variables de entorno)
## pero donde va?
# 7- se suma el JDBM para la base (ver notas de instalacion)

## 10:Falta crear la base en postgres

# Ver Archivo notas

#### TESTING ####
hacer imagen de tomcat version anterior (9.0.75) para tests

tomcat:9.0.75-jdk8-temurin-jammy

https://github.com/docker-library/tomcat/blob/ 87d54ab5dee907d4e0dd02b3df5d8c0542bac1b2/9.0/jdk8/temurin-jammy/Dockerfile

### pendientes 
1- Instalacion de ttf-mscorefonts - DONE
2- Modificar la instalacion del tomcat en el contenedor 9.0.75 -DONE 
3- sumar la config de la DB de postgress - DONE
4- Al finalizar la copia de demo, ajustar a nuestro docker. -DONE