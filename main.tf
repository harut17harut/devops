terraform {
  required_providers {
    aws = {
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
}

variable "env" {
  type = string
  description = "Environment name"
  default = "develop"
}


provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0039da1f3917fa8e3"
  instance_type = "t2.micro"

  tags = {
    Name = "${env}"
  }
}
