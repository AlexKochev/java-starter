FROM arm64/eclipse-temurin:17-jdk-alpine

VOLUME /tmp

ARG java-starter

COPY java-starter-1.0.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]