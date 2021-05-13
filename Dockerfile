FROM maven:3.8.1-openjdk-8-slim AS maven_build

COPY ./ ./

RUN mvn clean package

FROM java:8-jdk-alpine as prod

COPY --from=maven_build server/target/app.jar /app.jar

COPY ./basil.ini /basil.ini

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "-Dbasil.configurationFile=/basil.ini", "/app.jar", "-p", "8080"]