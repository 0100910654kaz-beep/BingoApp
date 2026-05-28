FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY *.war /usr/local/tomcat/webapps/ROOT.war
