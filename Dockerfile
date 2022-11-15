FROM openjdk:18
EXPOSE 8080
ADD target/Assignment-0.0.1-SNAPSHOT.jar Assignment.jar
ENTRYPOINT ["java","-jar","/Assignment.jar"]

