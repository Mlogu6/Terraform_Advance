# Data source module are used to apply the existing resources like vpc, s3, .. in aws account in terraform script.


data "aws_vpc" "my-vpc" {
  id = "vpc-0b7015aab0f91ed04" # ----------------> Vpc ID which is directly created in the AWS console.
}
