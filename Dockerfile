FROM java:openjdk-8u66-jdk

MAINTAINER jan@bossie.org

RUN apt-get update && \
apt-get install -y maven && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /build

COPY pom.xml /build/pom.xml
RUN mvn dependency:resolve verify

COPY src /build/src
RUN mvn assembly:assembly

ENTRYPOINT ["java", "-jar", "/build/target/factorial-1.0-SNAPSHOT-jar-with-dependencies.jar"]

