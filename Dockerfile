FROM hub.tansun.com/test/mini-java:8
ADD target/helloworld-1.0-SNAPSHOT.jar app.jar
EXPOSE 20000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]