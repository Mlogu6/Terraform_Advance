variable "aws_region" {
    description = "Region variable to create a instance_type"
    type = string
    default = "ap-south-1"
}

variable "instance_type" {
    description = "instance type"
    type = string
    default = "t2.micro"
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