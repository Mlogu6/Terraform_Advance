# Terraform Lifecycle
# terraform.tf the script where we maintain our terrform scripts is the Absolute. If mean the terraform will only consider what ever writen in the file
# terraform.tfstate this file save all the changes or plan copy of the script which we executed.
# Usually terraform destroy the infrastructure before creating it. Here we are changing the terraform behaviour by using the Lifecycle module.
# Lifecycle module > create_before_destroy this module will create a Infrastructure before destroying the previous Infrastructure.


terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.50.0"
        }
    }
}

provider "aws" {
    region = "us-west-1"
}

resource "aws_vpc" "vpc-us" {
    cidr_block = "10.1.0.0/16"
    tags = {
        Name = "VPC-US"
    }
}

resource "aws_instance" "machine-1" {
    ami = "ami-00d8a762cb0c50254"
    instance_type = "t2.micro"
    availability_zone = "us-west-1c"
    tags = {
        Name = "Machine-1"
    }
    lifecycle {
        create_before_destroy = true
    }
}