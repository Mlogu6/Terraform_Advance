variable "aws_region" {
  description = "Region variable to create a instance_type"
  type        = string
  default     = "ap-south-1"
}

variable "app_name" {
  description = "instance type"
  type        = string
  default     = "facebook"
}

variable "environment_name" {
  description = "image id of amazon linux"
  type        = string
  default     = "dev"
}
