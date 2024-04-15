resource "aws_subnet" "Subnet" {
  count = length(var.subnet_list_with_ip)
  
    vpc_id = var.vpc_id
    cidr_block = var.subnet_list_with_ip[count.index]
    availability_zone       = var.availability_zones[count.index]
    map_public_ip_on_launch = true
  
  tags = {
    Name = "Subnet-${count.index + 1}"
  }
}





