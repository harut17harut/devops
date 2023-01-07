terraform {
  required_providers {
    aws = {
      region = "eu-central-1"
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  cloud {
    organization = "harut15harut"

    workspaces {
      name = "test"
    }
  }

provider "aws" {
  region = "eu-central-1"
  required_version = ">= 1.2.0"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0039da1f3917fa8e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform instance"
  }
}
