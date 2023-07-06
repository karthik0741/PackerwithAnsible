pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh """
        cd /home/karthik/PackerwithAnsible
        packer init .
        packer build aws-ami-v1.pkr.hcl
        """
      }
    }
  }
}
