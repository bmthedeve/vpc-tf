resource "aws_instance" "ec2" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public-subnet.id
  tags = {
    "Name" = "through_Terraform"
  }
}