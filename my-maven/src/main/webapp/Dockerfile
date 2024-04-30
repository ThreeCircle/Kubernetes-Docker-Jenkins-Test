# 베이스 이미지 지정
FROM tomcat:10.1

# 작업 디렉토리 설정
WORKDIR /usr/local/tomcat/webapps/

# JSP 파일 압축 해제 후 복사
COPY ../my-maven.war /usr/local/tomcat/webapps/

# 컨테이너가 시작될 때 실행될 명령어 지정
CMD ["catalina.sh", "run"]