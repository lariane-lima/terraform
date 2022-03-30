terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0.0"
      }
    }
    required_version = ">= 0.14.9"
}

provider "aws" {
    region = "us-east-1" 
}

resource "aws_instance" "primeira-instancia" {
    ami = "ami-0e472ba40eb589f49"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        Name = "terraform ansible python"
    }
}