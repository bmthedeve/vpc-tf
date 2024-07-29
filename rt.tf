resource "aws_route_table" "public-route-table" {
    vpc_id = aws_vpc.production.id
  tags = {
    "name" = "public route table"
  }
}
resource "aws_route_table" "private-route-table" {
    vpc_id = aws_vpc.production.id
  tags = {
    "name" = "private route table"
  }
}

resource "aws_route_table_association" "public-route-table-association" {
  route_table_id = aws_route_table.public-route-table.id
  subnet_id = aws_subnet.public-subnet.id
}

resource "aws_route_table_association" "private-route-table-association" {
  route_table_id = aws_route_table.private-route-table.id
  subnet_id = aws_subnet.private-subnet.id
}

resource "aws_route" "public-internet-route" {
  route_table_id = aws_route_table.public-route-table.id
  gateway_id = aws_internet_gateway.internet-gateway.id
  destination_cidr_block = "0.0.0.0/0"
}
resource "aws_route" "private-internet-route" {
  route_table_id = aws_route_table.private-route-table.id
  gateway_id = aws_nat_gateway.nat-gateway.id
  destination_cidr_block = "0.0.0.0/0"
}