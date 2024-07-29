resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.production.id
  tags = {
    "Name" = "production internet gateway"
  }
}