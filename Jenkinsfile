pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh ' curl -o packer.zip https://releases.hashicorp.com/packer/1.8.5/packer_1.8.5_linux_amd64.zip'
        sh 'unzip packer.zip'
        sh 'sudo mv packer /usr/local/bin/'
        sh 'packer init .'
        sh 'packer build aws-ami-v1.pkr.hcl'
      }
    }
  }
}
