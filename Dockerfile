#FROM openjdk:21-ea+17
#MAINTAINER FLI
#COPY target/fli-0.0.1-SNAPSHOT.jar  fli-app.jar
#ENTRYPOINT ["java","-jar","/fli-app.jar"]

FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml 

FROM openjdk:11-jre-slim
MAINTAINER FLI
COPY  target/fli-0.0.1-SNAPSHOT.jar  fli-app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/fli-app.jar"]
