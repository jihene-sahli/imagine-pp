FROM maven:3-jdk-8

WORKDIR /code
ADD pom.xml /code/pom.xml
ADD src /code/src
ADD ci/develop/* code/src/main/resources/
RUN  mvn flyway:migrate -B -v
RUN mvn clean test -B -v

