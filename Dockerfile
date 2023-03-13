FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/sheikhasim/demo-app-actions.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/demo-app-actions /app 
RUN mvn install 

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=1 /app/target/demoapp-1.0-SNAPSHOT.jar /app 
CMD ["java -jar demoapp-1.0-SNAPSHOT.jar"] 
