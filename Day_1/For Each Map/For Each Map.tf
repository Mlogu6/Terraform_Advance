# For each Map help us to create a resource from a key and value by providing a variable 
# In the below script we are create a s3 bucket with key and value using for_each module.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "mys3buckets" {
  for_each = {
    dev   = "development-bucket" # -----------------> Key = Value
    qa    = "quality-analysis-bucket"
    prod  = "production-bucker"
    stage = "stage-bucker"
    uat   = "uat-bucket"
  }
  bucket = "${each.key}-${each.value}" # -----------> Setting variable with key and value for bucker name
  acl    = "private"

  tags = {
    Name = "${each.key}-${each.value}" # -----------> Setting variable with key and value for tags
  }
}
