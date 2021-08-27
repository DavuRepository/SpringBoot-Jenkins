node {
  stage ('Git Checkout'){
   git 'https://github.com/DavuRepository/SpringBoot-Jenkins'
  }
  stage ('MVN build'){
   sh 'mvn clean package'
  }

}
