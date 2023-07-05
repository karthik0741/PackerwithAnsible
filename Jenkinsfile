pipeline {
  agent {
    docker { image 'packer-ansible-resource:latest' }
  }
  stages {
    stage('Test') {
      steps {
        sh 'packer init .'
        sh 'packer build aws-ami-v1.pkr.hcl'
      }
    }
  }
}
