FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} springboot-sample-application-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/springboot-sample-application-0.0.1-SNAPSHOT.jar"]