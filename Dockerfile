FROM openjdk:8-jre-alpine
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/demo.jar
# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]