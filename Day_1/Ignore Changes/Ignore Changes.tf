# Terraform Lifecycle
# terraform.tf the script where we maintain our terrform scripts is the Absolute. If mean the terraform will only consider what ever writen in the file
# terraform.tfstate this file save all the changes or plan copy of the script which we executed.

# Usually terraform will make the changes which ever mentioned in the .tf file if we are making any changes in the infrastructure directly in aws console and if we execute terraform refresh the same changes will be updated in the state file as well.
# But if we execute terraform apply the terraform will delete the changes which is not mentioned in the .tf file or which we made directly in aws console.
# To avoid this we are going to use one fo the modules from Lifecycle module > ignore_changes this module will ignore the changes which we made directly in the infrastructure.


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
        ignore_changes = [tags]       # -------> this module will not all us to destroy the Infrastructure when it is in true status.
    }
}