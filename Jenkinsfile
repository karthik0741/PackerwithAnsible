pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
         sh 'echo "Hello World"'
        sh """
        #!/bin/bash
        packer init .
        packer build aws-ami-v1.pkr.hcl
        """
      }
    }
  }
}
