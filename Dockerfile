# Use official OpenJDK base image
FROM openjdk:21-slim

# Set working directory
WORKDIR /app

# Copy source code to container
COPY HelloWorld.java .

# Compile Java file
RUN javac HelloWorld.java

# Command to run the compiled Java class
CMD ["java", "HelloWorld"]
