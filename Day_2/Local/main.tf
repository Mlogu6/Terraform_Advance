# Without local values method we need to change the variable where ever it repetes. 
# But if we use the local values method we can achieve the output by changing only the local value alone. 


#without Local values
#---------------------
/*
resource "aws_s3_bucket" "mys3bucket" {
  bucket = "${var.app_name}-${var.environment_name}-bucket" #----output---> facebook-dev-bucket 
  acl    = "private"
  tags = {
    Name = "${var.app_name}-${var.environment_name}-bucket" #----output---> facebook-dev-bucket
  }
}
*/

# with Local Values
#------------------

locals {
  bucket-name = "${var.app_name}-${var.environment_name}-bucket-new" #-------> Complex expression
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = local.bucket-name #----output---> facebook-dev-bucket 
  acl    = "private"
  tags = {
    Name = local.bucket-name #----output---> facebook-dev-bucket
  }
}
