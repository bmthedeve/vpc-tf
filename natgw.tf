resource "aws_nat_gateway" "nat-gateway" {
    allocation_id = aws_eip.eip.id
  depends_on = [ aws_eip.eip ]
  subnet_id = aws_subnet.public-subnet.id
  tags = {
    "Name" = "nat-gateway"
  }
}