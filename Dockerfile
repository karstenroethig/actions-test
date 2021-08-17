ARG BASE=openjdk:11.0-jdk-slim

FROM $BASE

ARG JAR_FILE=webapp/target/*.jar

COPY ${JAR_FILE} /app/application.jar

WORKDIR /app

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "application.jar"]
