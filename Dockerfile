FROM ubuntu:22.04
RUN apt update
RUN apt install openjdk-17-jdk wget -y
COPY target/maigolab_hello-1.0.0-*.jar /maigolab_hello-1.0.0-*.jar
EXPOSE 8080
CMD ["java", "-jar", "/maigolab_hello-1.0.0-*.jar"]
