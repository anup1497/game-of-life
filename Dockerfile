FROM tomcat:9
EXPOSE 8080
COPY /root/.jenkins/workspace/K8s_Gameoflife/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps
