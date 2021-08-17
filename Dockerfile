FROM adoptopenjdk:11-jdk

ARG JAR_FILE=webapp/target/*.jar

COPY ${JAR_FILE} /app/application.jar

WORKDIR /app

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "application.jar"]
