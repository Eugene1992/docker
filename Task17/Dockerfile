# Task 17. Java & MySQL

FROM openjdk:14-alpine

LABEL Author="Sergiy Morenets"
#Build steps(require JDK)
COPY MainStarter.java /sources/
COPY mysql-connector-java-8.0.19.jar /sources/

WORKDIR /sources
RUN javac MainStarter.java && rm MainStarter.java

#Runtime steps(require JRE)
CMD java -classpath .:/sources/mysql-connector-java-8.0.19.jar MainStarter