FROM java:8
VOLUME /tmp
EXPOSE 8084
#ADD http://nexusrepo-nexus.cloudapps-5957.oslab.opentlc.com/content/repositories/releases/org/mong-ci/main/mong-jar/2.234/mong-jar-2.234.jar app.jar
ADD ./target/SpringBootMavenExample-1.3.5.RELEASE.war app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
