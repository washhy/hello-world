FROM hub.tansun.com/test/mini-java:8
VOLUME /tmp
ADD target/helloworld-1.0-SNAPSHOT.jar /app.jar
ENV JAVA_OPTS -Xmx512m
EXPOSE 20000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]