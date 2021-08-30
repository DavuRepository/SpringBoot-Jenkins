FROM openjdk:8-jdk-alpine
EXPOSE 8081
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} springboot-jenkins-docker.jar
ENTRYPOINT ["java","-jar","/springboot-jenkins-docker.jar"]