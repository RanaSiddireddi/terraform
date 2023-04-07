terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}

provider "aws" {}

resource "aws_instance" "my-ec2" {
  ami                     = data.aws_ami.lab-image.image_id
  instance_type           = "t2.micro"
}

