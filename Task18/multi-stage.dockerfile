# First stage - Maven build
FROM maven:3 as mvn

COPY pom.xml /opt/
WORKDIR /opt
RUN mvn dependency:resolve

COPY . /opt/
RUN mvn install spring-boot:repackage

#Second stage - Pack fat jar into OpenJDK image
FROM openjdk:14-alpine

#Update this dockerfile to support any project version
COPY --from=mvn /opt/target/spring-boot-docker-0.1.0.jar /app.jar

CMD java -jar /app.jar