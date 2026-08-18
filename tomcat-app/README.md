# Assignment 2 – Docker Tomcat Deployment

## Objective

Create a Docker image containing **Tomcat 9** and deploy a sample WAR application using a Docker container.

## 1. Dockerfile

Create a file named `Dockerfile`:

```dockerfile
FROM ubuntu:latest

RUN apt -y update
RUN apt -y install default-jre
RUN apt -y install wget

RUN mkdir /usr/local/tomcat

RUN wget https://downloads01-he-fi.apache.org/tomcat/tomcat-9/v9.0.121/bin/apache-tomcat-9.0.121.tar.gz -O /tmp/tomcat.tar.gz

RUN cd /tmp && tar xvfz tomcat.tar.gz

RUN cp -Rv /tmp/apache-tomcat-9.0.121/* /usr/local/tomcat/

COPY sample.war /usr/local/tomcat/webapps/sample.war

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
```

## 2. Project Structure

```text
tomcat-app/
├── Dockerfile
└── sample.war
```

## 3. Build the Docker Image

Run the following command from the directory containing the Dockerfile:

```bash
docker build -t my-tomcat_image:1.0 .
```

Verify the image:

```bash
docker images
```

## 4. Create and Run the Container

Run the Tomcat container:

```bash
docker run -d --name my_tomcat -p 8082:8080 my-tomcat_image:1.0
```

### Port Mapping

```text
Host Port      Container Port
8082      ---> 8080
```

Tomcat runs on port `8080` inside the container, while port `8082` is exposed on the host.

## 5. Verify the Container

Check the running container:

```bash
docker ps
```

Check the container logs:

```bash
docker logs my_tomcat
```

## 6. Access the Application

Open the following URL in a browser:

```text
http://<EC2-PUBLIC-IP>:8082/sample/
```

Make sure port **8082** is allowed in the EC2 Security Group.

## 7. Useful Docker Commands

Stop the container:

```bash
docker stop my_tomcat
```

Start the container:

```bash
docker start my_tomcat
```

Remove the container:

```bash
docker rm -f my_tomcat
```

Remove the image:

```bash
docker rmi my-tomcat_image:1.0
```

## Result

Tomcat 9 was successfully installed inside a Docker image, a sample WAR application was deployed, and the application was accessed through port `8082` on the host.
