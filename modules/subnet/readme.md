//module calling 

module "subnet" {
    source = "./modules/subnet"
    vpc_id =  module.vpc.vpcid //take input of vpc id output
    pro = var.pro
}


//varibale
variable "pro" {
  type = list(string)
  default = ["192.172.0.0/25", "192.172.0.128/25"]
  
}