resource "aws_route_table" "route_table_id" {
  vpc_id = var.vpc_id_Route



tags = {
  Name = "ProRoute"
}
}

resource "aws_route" "myroute" {
    route_table_id = aws_route_table.route_table_id.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = var.internet_gateway_id
  
}

resource "aws_route_table_association" "proassocation" {
  count = length(var.subnet_id_assication) 
  subnet_id = var.subnet_id_assication[count.index]
  route_table_id = aws_route_table.route_table_id.id
}

