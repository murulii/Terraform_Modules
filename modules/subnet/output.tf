output "subnetoutput" {

    value = aws_subnet.Subnet[*].id
  
}
