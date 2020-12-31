FROM openjdk:11
ADD target/ptm-eureka-server.jar ptm-eureka-server.jar
COPY ./target/ptm-eureka-server.jar .
WORKDIR .
ARG JAR_FILE
RUN sh -c 'touch ptm-eureka-server.jar'
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "ptm-eureka-server.jar"]





# Add Maven dependencies (not shaded into the artifact; Docker-cached)
#ADD target/lib           /usr/share/myservice/lib
# Add the service itself
#ADD target/${JAR_FILE} /usr/share/myservice/myservice.jar