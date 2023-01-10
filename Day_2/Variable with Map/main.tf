# While defining the variable we need to mention terraform index number in square brackets

resource "aws_vpc" "vpc-us" {
    cidr_block = "10.1.0.0/16"
    tags = {
        Name = "VPC-US"
    }
}

resource "aws_instance" "machine-1" {
    ami = var.aws_ami_id
    instance_type = var.instance_type["big-apps"]
    count = var.aws_instance_count
    tags = {
        Name = "Machine-1"
    }
}