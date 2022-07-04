
FROM centos:centos7.9.2009

RUN yum install java -y

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.64/bin/apache-tomcat-9.0.64.tar.gz .

RUN tar -xzf apache-tomcat-9.0.63.tar.gz

COPY target/gameoflife.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080 

CMD ["catalina.sh", "run"]
