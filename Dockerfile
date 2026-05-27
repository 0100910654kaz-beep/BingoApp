FROM tomcat:9.0-jdk11-corretto
# 既存のアプリを削除
RUN rm -rf /usr/local/tomcat/webapps/*
# WARファイルをROOTとしてコピー（これでURLの途中に名前が入らなくなります）
COPY BingoApp_01.war /usr/local/tomcat/webapps/ROOT.war
# Tomcatの起動
CMD ["catalina.sh", "run"]
