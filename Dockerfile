FROM alpine/git as MT
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package


FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/demo-app-actions /app 
RUN mvn install 

FROM openjdk:8-jre-alpine
COPY --from=MT/tmp/target/demoapp-1.0-SNAPSHOT.jar /deployments/app.jar 
CMD ["java -jar demoapp-1.0-SNAPSHOT.jar"] 
