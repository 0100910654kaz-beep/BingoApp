FROM tomcat:9.0-jdk11-corretto
# 元々あったものを全て消す
RUN rm -rf /usr/local/tomcat/webapps/*
# フォルダ名を「BingoApp」にして配置する（これならURLが .../BingoApp/admin.jsp になります）
COPY BingoApp_01.war /usr/local/tomcat/webapps/BingoApp.war
CMD ["catalina.sh", "run"]
