docker build --build-arg JAR_FILE=target/*.jar -t java-starter .

docker run -p 8080:8080 --name java-starter java-starter
