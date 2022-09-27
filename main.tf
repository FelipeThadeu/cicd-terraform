terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}


module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-0ea0f26a6d50850c5"
  instance_type          = "t3.micro"
  key_name               = "docker-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0ea5ae12dbfa0a051"]
  subnet_id              = "subnet-02ab3ae29516e604d"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}