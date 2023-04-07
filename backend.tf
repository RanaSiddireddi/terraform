terraform {
  backend "s3" {
    bucket = "b52-s3"
    key    = "ec2/dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {}