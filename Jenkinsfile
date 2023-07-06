node {
  agent none
  stages {
    stage('Test') {
      steps {
        sh 'packer init .'
        sh 'packer build aws-ami-v1.pkr.hcl'
      }
    }
  }
}
