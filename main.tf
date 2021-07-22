terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform_example" {
  ami           = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-ec2"
  }
}

