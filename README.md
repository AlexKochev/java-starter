## Docker build commands

```
docker build -t java-starter .
```
```
docker run -p 8080:8080 --name java-starter java-starter
```

To poke around inside the image, you can open a shell in it by running the following command (note that the base image does not have bash):

```
docker run -ti --entrypoint /bin/sh java-starter
```

To peek into a running container use <i>docker exec</i>:

```
docker exec -ti java-starter /bin/sh
```

## Building a docker image without a Dockerfile, by using Maven Plugins:
```
./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=java-starter
```

## Packaging a Java Application with Maven
./mvnw package

## Building multi-platform images:

The <i>mplatform/mquery</i> Docker image that lets you query the multi-platform status of any public image, in any public registry:

```	
docker run --rm mplatform/mquery eclipse-temurin:21-jdk-alpine
```

<i>docker buildx</i> command to allows to build multi-architecture images. When you invoke a build, you can set the --platform flag to specify the build output’s target platform, (like linux/amd64, linux/arm64, or darwin/amd64):

```	
docker buildx build --platform linux/amd64, linux/arm64 -t java-starter .
```