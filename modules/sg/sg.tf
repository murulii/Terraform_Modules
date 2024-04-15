resource "aws_security_group" "security_group" {
  name        = "prosg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id_sg

  tags = {
    Name = "prosg"
  }
}


resource "aws_vpc_security_group_ingress_rule" "ingress_rulw" {
  security_group_id = aws_security_group.security_group.id
  count = length(var.ingress_rule)
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = var.ingress_rule[count.index].from_port
  ip_protocol       = var.ingress_rule[count.index].ip_protocol
  to_port           = var.ingress_rule[count.index].to_port
}







resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.security_group.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

output "sg" {
  value = aws_security_group.security_group.id
}