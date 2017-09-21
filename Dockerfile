FROM frolvlad/alpine-oraclejdk8:v1
VOLUME /tmp /logs
ADD target/eryu-operation-system-0.0.1-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
EXPOSE 8100
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]