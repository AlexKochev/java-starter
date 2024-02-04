FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

RUN addgroup -S alex && adduser -S alex -G alex

USER alex

VOLUME /tmp

COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]

#COPY run.sh .
#ENTRYPOINT ["run.sh"]