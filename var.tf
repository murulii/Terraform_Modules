//vpc block
variable "vpc_cidr_block" {
  default = "192.168.0.0/24"
}
variable "vpc_tag" {
  default = "Vpc_Name"
  
}
//Internet Gateway
variable "ig_tag" {
    default = "internet gateway"
  
}

//subnet block

variable "subnet_list_with_ip" {
  type = list(string)
  default = ["192.168.0.0/25", "192.168.0.128/25"]
  
}

//Sg Group
variable "ingress_rule" {
    default = [

     {
        
        from_port         = 22
        ip_protocol       = "tcp"
        to_port           = 22

     },
     
     {
        
        from_port         = 80
        ip_protocol       = "tcp"
        to_port           = 80

     }
    ]
  
}

variable "vpc_id_sg" {
    default = ""
  
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1c"]  # Add your desired availability zones
}
# variable "aws_ec2_type" {
#     default = "t2.micro"
  
# }

# variable "aws_ec2_ami" {
#     default = "ami-080e1f13689e07408"
  
# }

# variable "aws_ec2_subnet" {
#     default = ""
  
# }
variable "aws_ec2_userdata" {
  default = ""
}