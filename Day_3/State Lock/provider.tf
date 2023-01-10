# State Lock -> we use backend block to set the s3 bucket to take a save or backup of terraform.tfstate file.
# Need to create S3 Bucket with Bucket name, Versioning enabled, As a public bucket, Object Ownership should be ACLs enabled. 
# Need to create Dynamodb with Table name, Partition key should be LockID - "LockID" the format should not be changed at anycost.
# We also used the Dynamodb to restrict the terraform apply by multiple users by creating table

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
  backend "s3" {
    bucket         = "terraform-statefile-lock"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state"
  }
}

provider "aws" {
  region = var.aws_region
}
