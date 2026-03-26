pipeline {
  agent any

  triggers {
    pollSCM('* * * * *')
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'main', 
        url: '<URL>'
      }
    }
    stage('Build') {
      steps {
        sh '<MAVEN_BUILD_COMMAND>'
      }
    }
    stage('Test') {
      steps {
        sh '<MAVEN_TEST_COMMAND>'
      }
    }
    stage('Deploy') {
      steps {
        deploy adapters: [tomcat9(credentialsId: 'admin', url: 'https://github.com/ms2548/webapp.git')], contextPath: null, war: 'path/to/war'
      }
    }
  }
}
