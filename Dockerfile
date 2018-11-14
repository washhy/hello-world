FROM hub.tansun.com/test/java:8
ADD target/helloworld-1.0-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS -Xms512m -Xmx512m
EXPOSE 20000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]