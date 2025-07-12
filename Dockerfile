FROM openjdk:21-slim
WORKDIR /app
COPY helloworld.java .
RUN javac helloworld.java
CMD ["java", "helloworld"]
