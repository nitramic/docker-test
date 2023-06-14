FROM tomcat:9.0.76-jdk8-temurin-jammy
COPY configs/tomcat-users.xml /conf/
COPY configs/manager.xml conf/Catalina/localhost/
COPY configs/host-manager.xml conf/Catalina/localhost/
