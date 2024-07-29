This Terraform code creates 
- a custom VPC with CIDR as input from user (check var.tf) with a public and private subnet.
- Internet Gateway is created and attached to VPC and
- NAT gateway will be added in created public subnet
- Route Tables are created for public and private subnets and
- appropriate routes are added for the subnets to provide internet communication to public subnet through Internet Gateway and from private subnet through NAT Gateway
- Also, a t2.micro EC2 instance will be created in public subnet of the VPC
