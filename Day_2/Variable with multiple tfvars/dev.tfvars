# dev.tfvars ---> This multiple .tfvars file help us to perform based upon the team or requirement.
# Terraform will not recoginize the .tfvars in different file name.
# To apply the values from dev.tfvars we need to exec the below command

# terraform plan or apply -var-file="dev.tfvars"


# To execute the prod.tfvars automaticall while we execute the terraform plan or apply 
# we need to change the file name from dev.tfvars to dev.auto.tfvars. Now terraform will fetch the valus automaticaly.

aws_instance_count=10
instance_type="t2.medium"