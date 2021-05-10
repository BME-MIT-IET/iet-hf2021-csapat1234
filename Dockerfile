FROM maven:3.8.1-openjdk-8-slim AS maven_build

COPY ./ ./

RUN mvn clean package

FROM java:8-jdk-alpine as prod

COPY --from=maven_build target/app.jar /app.jar

ENTRYPOINT ["/bin/sh"]