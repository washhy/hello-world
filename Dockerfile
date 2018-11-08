FROM hub.tansun.com/test/java:8
VOLUME /tmp
ADD target/helloworld-*.jar app.jar
RUN bash -c 'touch /app.jar'
ENV JAVA_OPTS -Xms512m -Xmx512m
EXPOSE 20000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]