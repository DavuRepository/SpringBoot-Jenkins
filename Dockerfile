FROM openjdk:8-jdk-alpine
EXPOSE 8081
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} springBoot-jenkins-docker.jar
ENTRYPOINT ["java","-jar","/springBoot-jenkins-docker.jar"]