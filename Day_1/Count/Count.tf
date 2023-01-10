# Count is used for defining the number of instance need to launch
# Count.index is used to set the variable. Which pick the count number and used for tags.

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

resource "aws_instance" "machine" {
    ami = "ami-00d8a762cb0c50254"
    instance_type = "t2.micro"
    availability_zone = "us-west-1a"
    count = 3                           # ----> count = which creates 3 instance
    tags = {
        Name = "Machine-${count.index}" # ----> count.index = which is a variable asign tag as Machine-0, Machine-1, Machine-2 for the instance created.
    }
}