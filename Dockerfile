FROM java:openjdk-8u66-jre

MAINTAINER jan@bossie.org

COPY target/factorial-1.0-SNAPSHOT-jar-with-dependencies.jar .

ENTRYPOINT ["java", "-jar", "factorial-1.0-SNAPSHOT-jar-with-dependencies.jar"]

