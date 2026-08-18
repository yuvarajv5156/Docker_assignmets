# Assignment 1 – Docker Tomcat Deployment

## Objective

Deploy a sample WAR application using the official Tomcat Docker image.

## 1. Dockerfile

Create a file named `Dockerfile`:

```dockerfile
FROM tomcat:jre8-alpine

COPY sample.war /usr/local/tomcat/webapps/sample.war
```

## 2. Project Structure

```text
my-sample-app/
├── Dockerfile
└── sample.war
```

## 3. Build the Docker Image

Navigate to the project directory:

```bash
cd my-sample-app
```

Build the Docker image:

```bash
docker build -t sample_image:1.0 .
```

Verify the image:

```bash
docker images
```

## 4. Create and Run the Container

Run the Tomcat container:

```bash
docker run -d --name sample-tomcat -p 8081:8080 sample_image:1.0
```

### Port Mapping

```text
Host Port      Container Port
8081      ---> 8080
```

Tomcat runs on port `8080` inside the container, while port `8081` is mapped to the host.

## 5. Verify the Container

Check the running container:

```bash
docker ps
```

Check Tomcat logs:

```bash
docker logs sample-tomcat
```

## 6. Access the Application

Open the application in a browser:

```text
http://<EC2-PUBLIC-IP>:8081/sample/
```

Make sure port **8081** is allowed in the EC2 Security Group.

## Result

The sample WAR application was successfully deployed on Tomcat using Docker, and the application was accessed through port `8081`.
