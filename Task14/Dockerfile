#Task 14. Sample Java application

FROM openjdk:14-alpine
LABEL Author="Sergiy Morenets"

COPY Sample.java /sources/
WORKDIR /sources
RUN javac Sample.java && rm Sample.java
CMD java Sample