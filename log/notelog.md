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