docker ps
docker pull nginx
docker ps
docker images
docker pull nginx:1
docker images
docker pull nginx:latest
docker images
docker run nginx:latest 
docker ps
docker run -d nginx:latest 
docker ps
docker run -d --name nc nginx:latest 
docker ps
docker stop f2b5cd92006a
docker ps
docker ps -a
docker rm 54289b4bbb6b
docker ps -a
docker rm musing_chaum
docker ps -a
docker images
docker rmi nginx:1
docker images
docker ps
docker stop ae5f305cf60a
docker ps 
docker ps -a
sudo apt install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
docker --version
docker pull nginx
sudo usermod -aG docker $USER
getent group docker
newgrp docker
ls
docker ps
docker ps -a
docker rm ae5f305cf60a
docker run --name nc nginx:latest -p 8080:80
docker run --name nc -p 8080:80 nginx:latest
docker ps
docker ps -a
docker rm 6bc61987cd62
docker run --name nc -p 8080:80 nginx:latest
docker ps
docker ps -a
docker start 057d2799055e
docker ps
curl http://localhost:8080
ping http://localhost:8080
ping http://54.167.27.39:8080
docker ps
vi index.html
ls 
ls /
ls /usr/
ls /usr/share/
ls /usr/share/ | grep 'nginx'
ls /usr/share/ | grep 'nginx.*'
ls /usr/share/ | grep 'meny'
ls /usr/share/ | grep 'menu'
docker cp index.html nc:/usr/share/nginx/html/index.html
pwd
mkdir my-tomcat-app
cd my-tomcat-app
ls
vi Dockerfile
ls
history
clear
exit
