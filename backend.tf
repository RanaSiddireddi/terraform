terraform {
  backend "s3" {
    bucket = "b52-s3"
    key    = "ec2/dev/terraform.tfstate"
    region = "us-east-1"
  }
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.62.0"
    }
  }
}

provider "aws" {}