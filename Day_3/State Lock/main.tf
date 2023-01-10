resource "aws_instance" "machine-1" {
  ami           = var.aws_ami_id
  instance_type = var.instance_type
  count         = var.aws_instance_count
  tags = {
    Name = "Machine-1"
  }
}
