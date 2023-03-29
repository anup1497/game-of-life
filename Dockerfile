FROM tomcat:9
EXPOSE 8080
COPY gameoflife.war /usr/local/tomcat/webapps
