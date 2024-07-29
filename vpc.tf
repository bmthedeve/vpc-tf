resource "aws_vpc" "production" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
  tags = {
    "Name" = "Production"
  }
}