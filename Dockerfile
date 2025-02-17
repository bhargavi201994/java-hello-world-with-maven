FROM ubuntu:22.04
RUN apt update
RUN apt install openjdk-17-jdk wget -y
COPY target/hello-world-java*.jar /app/app.jar
ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["/bin/sleep","3600"]
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
