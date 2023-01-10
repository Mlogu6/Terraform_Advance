# depends_on helps to create a infrastructure in a structured manner.
# In below script we are create a ec2 and vpc. But I am going to mention the ec2 script 1st and vpc script 2nd but I am going to mention the depends in each bottom of the script.

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

resource "aws_instance" "machine-1" {
    ami = "ami-00d8a762cb0c50254"
    instance_type = "t2.micro"
    availability_zone = "us-west-1c"
    tags = {
        Name = "Machine-1"
    }
    depends_on = [aws_vpc.vpc-us]               # ------> This module will hold this resource to create untill the vpc-us creating
}

resource "aws_vpc" "vpc-us" {
    cidr_block = "10.1.0.0/16"
    tags = {
        Name = "VPC-US"
    }
}