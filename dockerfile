FROM ubuntu:latest
RUN apt-get update && apt-get install -y openjdk-11-jdk
COPY hello.java /app/
WORKDIR /app/
RUN javac hello.java
CMD ["java","hello"]
