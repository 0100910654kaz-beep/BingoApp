FROM tomcat:9.0-jdk11-corretto
RUN rm -rf /usr/local/tomcat/webapps/*
COPY BingoApp_01.war /usr/local/tomcat/webapps/ROOT.war
# ここでTomcatの設定に「サーブレットへの正しい道順」を教え込みます
ENV CATALINA_OPTS="-Dorg.apache.catalina.filters.ExpiresFilter.ALWAYS=true"
CMD ["catalina.sh", "run"]
