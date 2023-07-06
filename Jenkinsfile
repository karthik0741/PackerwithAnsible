pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh """
        cd /var/lib/jenkins/workspace/BuildAMI
        packer init .
        packer build aws-ami-v1.pkr.hcl
        """
      }
    }
  }
}
