#
# Build stage
#
FROM maven:3.8.4-openjdk-17 AS build
COPY . .
RUN mvn clean package

#
# Package stage
#
FROM openjdk:17-jdk-slim
COPY --from=build target/martin-0.0.1-SNAPSHOT.jar martin.jar
# ENV PORT=8080
ENTRYPOINT ["java","-jar","martin.jar"]

#FROM amazoncorretto:11-alpine-jdk
#MAINTAINER MartinMasetto
#COPY target/martin-0.0.1-SNAPSHOT.jar Portfolio-MM.jar
#ENTRYPOINT ["java","-jar","/Portfolio-MM.jar"]
