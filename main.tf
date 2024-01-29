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
  region  = "us-east-2"
}

resource "aws_instance" "project_server" {
  ami           = "ami-05fb0b8c1424f266b" # Ubuntu 22.04 // us-east-2
  instance_type = "t2.micro"

  tags = {
    Name = "my_project_server"
  }
}
