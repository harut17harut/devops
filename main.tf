terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-central-1"
  access_key = "AKIAVCUUMEEEOU6TWG75"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0039da1f3917fa8e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform instance"
  }
}
