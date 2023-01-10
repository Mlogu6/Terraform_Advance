# Multiple Provider is used to create a resource in multiple region like mumbai, Us, ...
# To create multiple provider here we are using the *alias* module in the second provider column and resource column

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.50.0"
        }
    }
}

provider "aws" {
    region = "ap-south-1"
}

provider "aws" {
    region = "us-west-1"
    alias = "US-West"
}

resource "aws_vpc" "vpc-mumbai" {
    cidr_block = "10.1.0.0/16"
    tags = {
        Name = "VPC-Mumbai"
    }
}

resource "aws_vpc" "vpc-west" {
    cidr_block = "10.1.0.0/16"
    provider = aws.US-West
    tags = {
        Name = "VPC-West"
    }
}