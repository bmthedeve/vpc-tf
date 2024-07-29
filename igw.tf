resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.production.id
  tags = {
    "name" = "production internet gateway"
  }
}