# For each Map help us to create a resource from a list of values by providing a variable 
# In the below script we are create a IAM user with the variable name from the list.

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

resource "aws_iam_user" "myuser" {
    for_each = toset (["Logan", "Ansar", "Ashok", "Kiruba", "Kalai"])   # list of keys
    name = each.key                                                     # variable for name
}