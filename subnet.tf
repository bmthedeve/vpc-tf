resource "aws_subnet" "public-subnet" {
  cidr_block = var.public-subnet-cidr_block
  vpc_id = aws_vpc.production.id
  tags = {
    "Name" = "public subnet"
  }
}

resource "aws_subnet" "private-subnet" {
  cidr_block = var.private-subnet-cidr_block
  vpc_id = aws_vpc.production.id
  tags = {
    "Name" = "private subnet"
  }
}