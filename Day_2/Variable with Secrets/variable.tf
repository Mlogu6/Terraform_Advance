# Here we are not updating default value for username and password so terraform will pick the values from terraform.tfvars file. 
# Sensitive module help us to hide the value from updating in terraform state file. 

variable "aws_region" {
  description = "Region variable to create a instance_type"
  type        = string
  default     = "ap-south-1"
}

variable "db_username" {
  description = "database name"
  type        = string
  sensitive   = true # ----------------------> This will encrypt the username in terraform state file
}

variable "db_password" {
  description = "database name"
  type        = string
  sensitive   = true # ----------------------> This will encrypt the password in terraform state file
}
