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

