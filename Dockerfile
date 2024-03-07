FROM openjdk:8-jdk-alpine
WORkDIR /app
COPY ./target/*.jar  /app.jar
CMD ["java","-jar","app.jar"]

