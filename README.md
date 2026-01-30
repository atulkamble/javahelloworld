## 📦 Java Hello World Docker Project

This guide will walk you through creating a simple Java Hello World app, containerizing it with Docker, and running it locally.

---

```
git clone https://github.com/atulkamble/javahelloworld.git
cd javahelloworld
```

## 📁 Project Structure

```
.
├── Dockerfile
└── HelloWorld.java
```

---

## 📜 Steps to Build and Run

### 1️⃣ Create Java Hello World Script

```bash
touch helloworld.java
```

Open and add the following code:

```java
public class helloworld {
    public static void main(String[] args) {
        System.out.println("Hello, World from Dockerized Java App!");
    }
}
```

Check the file:

```bash
cat helloworld.java
```

Run it locally to test (if you have Java installed):

```bash
java --version
javac helloworld.java
java helloworld
```

---

### 2️⃣ Create Dockerfile

```bash
touch Dockerfile
```

Edit and add the following content:

```Dockerfile
# Use official OpenJDK base image
FROM openjdk:21-slim

# Set working directory
WORKDIR /app

# Copy source code to container
COPY helloworld.java .

# Compile Java file
RUN javac helloworld.java

# Command to run the compiled Java class
CMD ["java", "helloworld"]
```

Check files:

```bash
ls
```

---

### 3️⃣ Build Docker Image

```bash
sudo docker buildx build -t docker.io/atuljkamble/javahelloworld --load .
```

Check Docker images:

```bash
docker images
```

---

### 4️⃣ Push Docker Image to Docker Hub

```bash
docker push docker.io/atuljkamble/javahelloworld
```

---

### 5️⃣ Pull Image (if testing from another system)

```bash
docker pull docker.io/atuljkamble/javahelloworld
```

---

### 6️⃣ Run Docker Container

```bash
docker run docker.io/atuljkamble/javahelloworld
```

Check running containers:

```bash
docker container ls
docker ps -a
```

---

## ✅ Output Example

```
Hello, World from Dockerized Java App!
```

---

## 📌 Notes

* Make sure you are logged in to Docker Hub before pushing:

  ```bash
  docker login
  ```
* Replace `atuljkamble` with your Docker Hub username if different.
---
## 👨‍💻 Author

**Atul Kamble**

- 💼 [LinkedIn](https://www.linkedin.com/in/atuljkamble)
- 🐙 [GitHub](https://github.com/atulkamble)
- 🐦 [X](https://x.com/Atul_Kamble)
- 📷 [Instagram](https://www.instagram.com/atuljkamble)
- 🌐 [Website](https://www.atulkamble.in)
