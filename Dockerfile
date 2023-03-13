FROM openjdk:11
ADD target/demoapp.jar demoapp.jar
ENTRYPOINT ["java", "-jar","demoapp.jar"]
EXPOSE 8080