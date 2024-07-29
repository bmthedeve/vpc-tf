resource "aws_eip" "eip" {
  associate_with_private_ip = "192.2.3.1"
  tags = {
    "name" = "elastic ip"
  }
}