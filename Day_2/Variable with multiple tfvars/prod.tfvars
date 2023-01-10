# prod.tfvars ---> This multiple .tfvars file help us to perform based upon the team or requirement.
# Terraform will not recoginize the .tfvars in different file name.
# To apply the values from prod.tfvars we need to exec the below command

# terraform plan or apply -var-file="prod.tfvars"

# To execute the prod.tfvars automaticall while we execute the terraform plan or apply 
# we need to change the file name from prod.tfvars to prod.auto.tfvars. Now terraform will fetch the values automaticaly.

aws_instance_count = 8
instance_type      = "t2.large"
