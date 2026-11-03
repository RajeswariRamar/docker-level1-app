FROM tomcat:10.1-jdk17-temurin-jammy

LABEL maintainer="sre-devops@example.com"

RUN cp -av /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/ || true

COPY index.html /usr/local/tomcat/webapps/ROOT/index.html

EXPOSE 8080

CMD ["catalina.sh", "run"]