#FROM openjdk:21-ea+17
#MAINTAINER FLI
#COPY target/fli-0.0.1-SNAPSHOT.jar  fli-app.jar
#ENTRYPOINT ["java","-jar","/fli-app.jar"]


FROM openjdk:11-jdk-slim
MAINTAINER FLI
VOLUME /tmp
COPY target/fli-0.0.1-SNAPSHOT.jar  fli-app.jar
ENTRYPOINT ["java","-jar","/fli-app.jar"]
