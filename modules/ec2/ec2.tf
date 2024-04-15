resource "aws_instance" "ec2" {
    instance_type = var.aws_ec2_type
    ami = var.aws_ec2_ami
    subnet_id = var.aws_ec2_subnet
    

    user_data = var.aws_ec2_userdata
    tags = {
    Name = "kops"
  }
  
}