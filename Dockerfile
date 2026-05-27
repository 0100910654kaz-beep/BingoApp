FROM tomcat:9.0-jdk11-corretto
RUN rm -rf /usr/local/tomcat/webapps/*
COPY BingoApp_01.war /usr/local/tomcat/webapps/ROOT.war
