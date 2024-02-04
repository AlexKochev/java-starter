## Docker build commands

```
docker build -t java-starter .

docker run -p 8080:8080 --name java-starter java-starter
```

If you want to poke around inside the image, you can open a shell in it by running the following command (note that the base image does not have bash):

```
docker run -ti --entrypoint /bin/sh java-starter
```

If you have a running container and you want to peek into it, you can do so by running docker exec:

```
docker exec -ti java-starter /bin/sh
```

```
./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=java-starter
```

./mvnw package

```	docker buildx``` command to help you build multi-architecture images. When you invoke a build, you can set the --platform flag to specify the build output’s target platform, (like linux/amd64, linux/arm64, or darwin/amd64):

```	
docker buildx build --platform linux/amd64, linux/arm64 -t spring-helloworld .
```