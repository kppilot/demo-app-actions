FROM openjdk:11
ADD target/demoapp-2.0-SNAPSHOT.jar demoapp-2.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar","demoapp-2.0-SNAPSHOT.jar"]
EXPOSE 8080