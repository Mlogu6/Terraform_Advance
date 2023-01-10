# Immutable means the terraform will change if its a minor (matadata - ex: Name or tags) changes which doesn't impact the infrastructure or configuration.
# But if the changes are impacting the infrastructure it will destroy the current one and create a new infrastructure.

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
    availability_zone = "us-west-1a"
    tags = {
        Name = "Machine-1"  # ---> Matadata
    }
}