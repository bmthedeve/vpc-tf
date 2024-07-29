This Terraform code creates 
- a custom VPC in AWS with CIDR as input from user (check var.tf) with a public and private subnet.
- Internet Gateway is created and attached to VPC and
- NAT gateway will be added in created public subnet
- Route Tables are created for public and private subnets and
- appropriate routes are added for the subnets to provide internet communication to public subnet through Internet Gateway and from private subnet through NAT Gateway
- Also, a t2.micro EC2 instance will be created in public subnet of the VPC

Configure AWS CLI with Secret Key and Access Key generated for an IAM user with admin access for the sake of simplicity.
Install Terraform in your machine and execute the following commands in the same order in the directory containing these files
```
terraform init
terraform validate
terraform plan
terraform approve
```
