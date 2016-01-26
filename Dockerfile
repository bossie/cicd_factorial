FROM java:openjdk-8u66-jre

MAINTAINER jan@bossie.org

RUN apt-get update && \
apt-get install -y maven && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY pom.xml .
RUN mvn dependency:resolve verify

COPY src .
RUN mvn assembly:assembly

COPY target/factorial-1.0-SNAPSHOT-jar-with-dependencies.jar .

ENTRYPOINT ["java", "-jar", "factorial-1.0-SNAPSHOT-jar-with-dependencies.jar"]
