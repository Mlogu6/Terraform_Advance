# Variable with list it works by picking the values mentions in the default list.
# Terraform assume a index number from 0 automatically in the backend.

variable "aws_region" {
    description = "Region variable to create a instance_type"
    type = string
    default = "ap-south-1"
}

variable "aws_ami_id" {
    description = "image id of amazon linux"
    type = string
    default = "ami-0cca134ec43cf708f"
}

variable "aws_instance_count" {
    description = "No of instance count to create"
    type = number
    default = 1
}

variable "instance_type" {
    description = "instance type"
    type = list(string)
    #               0           1           2           3        # -----> Terraform Index
    default = ["t2.micro", "t2.medium", "t3.micro", "t3.medium"]
}