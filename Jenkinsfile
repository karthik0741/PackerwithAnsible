pipeline {
  agent any
  stages {
    stage('Test') {
      steps { 
        withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
          sh ' curl -o packer.zip https://releases.hashicorp.com/packer/1.8.5/packer_1.8.5_linux_amd64.zip'
          sh 'unzip packer.zip'
          sh 'sudo mv packer /usr/local/bin/'
          sh 'packer init .'
          sh 'packer build aws-ami-v1.pkr.hcl'
        }
      }
    }
    stage(" execute Ansible") {
           steps {
             ansiblePlaybook disableHostKeyChecking: true, installation: 'ansible', playbook: 'playbook.yml'
      }
    }
  }
}
