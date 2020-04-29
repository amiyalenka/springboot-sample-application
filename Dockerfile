#FROM openjdk:8-jdk-alpine
#ARG JAR_FILE=target/springboot-sample-application-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} springboot-sample-application-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/springboot-sample-application-0.0.1-SNAPSHOT.jar"]

# For Java 8, try this
FROM openjdk:8-jdk-alpine

EXPOSE 8080
# For Java 11, try this
#FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
#ARG JAR_FILE=target/springboot-sample-application-0.0.1-SNAPSHOT.jar

# cd /opt/app
#WORKDIR /opt/app
WORKDIR /app

ADD . /app

# cp target/spring-boot-web.jar /opt/app/app.jar
#COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app/app.jar"]