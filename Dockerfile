FROM openjdk:8-jdk-alphine
WORkDIR /app
COPY ./target/*.jar  /app.jar
CMD ["java","-jar","app.jar"]

