//modules 

module "route" {
    source = "./modules/RouteTable"
    vpc_id_Route = module.vpc.vpcid
    subnet_id_assication = [ module.subnet.subnetoutput[0], module.subnet.subnetoutput[1] ]
    ig_routetable = module.ig.igoutput
}

//var

variable "subnet_id_assication" {
    type = list(string)
    default = ["", ""]
    
}

variable "vpc_id_Route" {
  default = ""
}

variable "ig_routetable" {
    default = ""
  
}