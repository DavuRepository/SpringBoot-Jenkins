node {
  stage ('Git Checkout'){
   git 'https://github.com/DavuRepository/SpringBoot-Jenkins'
  }
  stage ('MVN build'){
   sh 'mvn clean package'
  }
  stage ('Run the SPring Boot'){
   java -jar /var/lib/jenkins/workspace/Jenkins-Git-Maven-Docker/target/SpringBoot-Jenkins-0.0.1-SNAPSHOT.jar
  }

}
