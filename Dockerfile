FROM anapsix/alpine-java

VOLUME /tmp

ADD build/libs/config-server.jar /app.jar
EXPOSE 8123

ENTRYPOINT ["java","-server","-Xmx256m","-jar","/app.jar"]
