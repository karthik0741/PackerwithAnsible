pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh """
        packer init .
        packer build aws-ami-v1.pkr.hcl
        """
      }
    }
  }
}
