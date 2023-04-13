#FROM openjdk:21-ea+17
#MAINTAINER FLI
#COPY target/fli-0.0.1-SNAPSHOT.jar  fli-app.jar
#ENTRYPOINT ["java","-jar","/fli-app.jar"]

FROM openjdk:11-jre-slim
MAINTAINER FLI
COPY --from=build /home/app/target/fli-0.0.1-SNAPSHOT.jar /usr/local/lib/fli-app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/fli-app.jar"]
