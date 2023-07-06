pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'echo "Hello World"'
        sh 'packer init .'
        sh 'packer build aws-ami-v1.pkr.hcl'
      }
    }
  }
}
