// moudle 

module "ig" {
    source = "./modules/ig"
    vpcid_ig = module.vpc.vpcid
}

//var

variable "vpcid_ig" {
    default = ""
  
}