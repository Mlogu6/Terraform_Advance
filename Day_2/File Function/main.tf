# File function is used to fetch the list of values or commands and to use it or change it easier in future
# Here we are creating a instance with user data so we created a seprate file for that and updated the bash commands init.
# So in main.tf file we mentioned as file("filename") in the user_data module. So while the instance get created it will automatically update whatever commands given in the file. 

resource "aws_instance" "machine-1" {
  ami           = var.aws_ami_id
  instance_type = var.instance_type
  count         = var.aws_instance_count
  user_data     = file("user_data.sh")
  tags = {
    Name = "Machine-1"
  }
}
