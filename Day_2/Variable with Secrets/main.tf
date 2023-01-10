# Variable with Secrets - This is used to encrypt or hide the sensitive information in terraform state file.
# Here we are creating a database with username and password. 
# The value are updated in terraform.tfvars file. 

resource "aws_db_instance" "database" {
  allocated_storage   = 5
  engine              = "mysql"
  instance_class      = "db.t2.micro"
  name                = "mydb"
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}
