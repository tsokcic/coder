FROM maven:3.8.6-eclipse-temurin-11-focal as build

ENV HOME=/app
RUN mkdir ${HOME}
ADD . ${HOME}
WORKDIR ${HOME}
RUN mvn -DskipTests clean package

FROM eclipse-temurin:11-jdk

COPY --from=build /app/target/mydemo-0.0.1-SNAPSHOT.jar /app/mydemo-0.0.1-SNAPSHOT.jar

CMD [ "java", "-jar", "/app/mydemo-0.0.1-SNAPSHOT.jar" ]
