#!/bin/sh
exec java -jar app.jar

# exec java ${JAVA_OPTS} -jar /app.jar ${@}
# docker run -p 8080:8080 -e "JAVA_OPTS=-Ddebug -Xmx128m" java-starter
# docker run -p 9000:9000 myorg/myapp --server.port=9000
