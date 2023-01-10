# Output file purpose is to view the value in the terraform terminal itself. 
# In this example we created a output.tf file to view the public and private ips of the instance we creating in the terraform terminal itself. 

output "ec2_public_ip" {
  value = aws_instance.machine-1.public_ip
}

output "ec2_private_ip" {
  value = aws_instance.machine-1.private_ip
}
