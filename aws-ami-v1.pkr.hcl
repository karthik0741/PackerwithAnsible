# If you have your default VPC available then use it. 

# packer puglin for AWS 
# https://www.packer.io/plugins/builders/amazon 
packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

# which ami to use as the base and where to save it
source "amazon-ebs" "amazon-linux" {
  region          = "eu-west-2"
  ami_name        = "ami-version-1.0.1-{{timestamp}}"
  instance_type   = "t2.micro"
  source_ami      = "ami-0b026d11830afcbac"
  ssh_username    = "ec2-user"
  ami_regions     = [
                      "eu-west-2"
                    ]
}

# what to install, configure and file to copy/execute
build {
  name = "hq-packer-Ansible"
  sources = [
    "source.amazon-ebs.amazon-linux"
  ]

  provisioner "ansible-local" {
	playbook_file = "/home/karthik/packer/playbook.yml"
	user = "ec2-user"
	use_proxy = false
}
  }

