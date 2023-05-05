FROM amazoncorrecto:8
MAINTAINER MartinMasetto

COPY target/martin-0.0.1-SNAPSHOT.jar Portfolio-MM.jar

ENTRYPOINT ["java","-jar","/Portfolio-MM.jar"]
