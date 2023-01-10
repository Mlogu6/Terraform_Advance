# Variable with Key value pair it works by picking the values based on the key

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
    type = map(string)
    default = {
#-----------key----------value--------
        "small-apps" = "t2.small"
        "medium-apps" = "t2.micro"
        "big-apps" = "t2.medium"
    }
}