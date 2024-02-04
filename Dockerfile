FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app

VOLUME /tmp

COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app/app.jar"]