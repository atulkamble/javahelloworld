FROM openjdk:11
WORKDIR /usr/src/app
COPY . .
RUN javac test.java
CMD ["java", "test"]


