FROM ubuntu:22.04
RUN apt update
RUN apt install openjdk-17-jdk wget -y
COPY target/*.jar /app/app.jar
EXPOSE 8080
CMD ["sh", "-c", "java -jar /app/app.jar && sleep infinity"]
