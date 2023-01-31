FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY target/my-app-*.jar /app/app.jar

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

CMD ["java", "-jar", "app.jar"]

