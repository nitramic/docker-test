export JAVA_HOME="/opt/jdk" 
export CATALINA_HOME="/opt/tomcat"
export LANG=it_IT@euro

JAVA_OPTS="-Djava.awt.headless=true \
-Dfile.encoding=UTF-8 \
-Xms256m \
-Xmx2048m \
-XX:MetaspaceSize=1024m \
-XX:MaxMetaspaceSize=1024m \
-XX:+HeapDumpOnOutOfMemoryError \
-XX:HeapDumpPath=/opt/tomcat/logs \
-XX:ErrorFile=/opt/tomcat/logs/java_error%p.log" 