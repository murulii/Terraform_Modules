resource "aws_vpc" "provpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_tag
  }
}

