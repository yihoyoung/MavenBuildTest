# Package program
FROM maven:3.5.0-jdk-8-alpine AS package

COPY ./pom.xml pom.xml
COPY ./src src/
RUN mvn clean package


# Build Image
FROM JAVA:8

COPY --from=package target/demo-0.0.1-SNAPSHOT.jar demo.jar
RUN bash -c 'touch /demo.jar'

COPY entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh

ENTRYPONT ["./entrypont.sh"]
