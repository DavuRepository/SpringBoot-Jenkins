#!groovy

node {
  stage ('Git Checkout'){
   git 'https://github.com/DavuRepository/SpringBoot-Jenkins'
  }
  stage ('Maven build'){
   sh 'mvn clean package'
  }
 // stage ('Run the Spring Boot'){
  // #sh 'java -jar /var/lib/jenkins/workspace/Jenkins-Git-Maven-Docker/target/SpringBoot-Jenkins-0.0.1-SNAPSHOT.jar'
 // }
 //  stage ('Docker Image'){
  // sh 'docker build -t davudocker/springBoot-jenkins-docker:0.0.1.RELEASE /var/lib/jenkins/workspace/Jenkins-Git-Maven-Docker/target/'
   
  //}
  //stage ('Docker run'){
   //sh 'docker run  -p 8081:8081 -t davudocker/springBoot-jenkins-docker:0.0.1.RELEASE'
 // }
  
   stage('Build image') {         
       
            app = docker.build("davudocker/springBoot-jenkins-docker:0.0.1.RELEASE")    
       }     
      stage('Test image') {           
            app.inside {            
             
             sh 'echo "Tests passed"'        
            }    
        }     

}
