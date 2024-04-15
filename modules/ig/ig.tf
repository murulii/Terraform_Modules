resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = var.vpcid_ig

  tags = {
    Name = var.ig_tag
  }
}

output "igoutput" {
  value = aws_internet_gateway.internet_gateway.id
}