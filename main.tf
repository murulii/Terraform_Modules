provider "aws" {
  region = "us-east-1"
    access_key = ""
    secret_key = ""

}
module "vpc" {
    source = "./modules/vpc"
    vpc_cidr_block = var.vpc_cidr_block
    vpc_tag = var.vpc_tag
}

module "subnet" {
    source = "./modules/subnet"
    vpc_id =  module.vpc.vpc_output_id //take input of vpc id output
    subnet_list_with_ip = var.subnet_list_with_ip
    availability_zones = var.availability_zones
}

module "ig" {
    source = "./modules/ig"
    vpcid_ig = module.vpc.vpc_output_id
    ig_tag = var.ig_tag
}
module "route" {
    source = "./modules/RouteTable"
    vpc_id_Route = module.vpc.vpc_output_id
    subnet_id_assication = [ module.subnet.subnetoutput[0], module.subnet.subnetoutput[1] ]
    internet_gateway_id = module.ig.igoutput
}

module "sg" {
    source = "./modules/sg"
    vpc_id_sg = module.vpc.vpc_output_id
      
}

module "aws" {
    source = "./modules/ec2"
    aws_ec2_ami = "ami-080e1f13689e07408"
    
   
  aws_ec2_subnet = module.subnet.subnetoutput[1]  //subnet is module name subnetout is output file name
}
