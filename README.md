# helloworldjava

// launch ec2 - linux - ssh 
SG: 22 inbound

```
sudo yum update -y
sudo yum install git -y
git config --global user.name "Atul Kamble"
git config --global user.email "atul_kamble@hotmail.com"
git config --global credential.helper store
git remote set-url origin https://tokent@github.com/atulkamble/helloworldjava.git
```

// create project folder on ec2
```
mkdir javaproject
cd javaproject
pwd
touch test.java
cat test.java
nano test.java
```

```
class test
{
    public static void main(String []args)
    {
     	System.out.println("Hello World.");
    }
};

``` 
// compile and run code
```
java test.java
nano test.java 
cat test.java
```
// initiate git
```
echo "# helloworldjava" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/atulkamble/helloworldjava.git
git push -u origin main
``` 
// create dockerfile
```
touch Dockerfile
ls
nano Dockerfile
```
```
FROM openjdk:11
WORKDIR /usr/src/app
COPY . .
RUN javac test.java
CMD ["java", "test"]
``` 
// build Docker Image
```
sudo docker build -t atuljkamble/javahelloworld .
sudo docker images
sudo docker run atuljkamble/javahelloworld
sudo docker push atuljkamble/javahelloworld
```

