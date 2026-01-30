FROM openjdk:27-ea-oraclelinux9
WORKDIR /app
COPY helloworld.java .
RUN javac helloworld.java
CMD ["java", "helloworld"]
