
//you can call like this

module "vpc" {
    source = "./modules/vpc"
    vpc_var = var.vpc_var
    tag = var.tag
}

//varibale
variable "vpc_var" {
  default = "192.172.0.0/24"
}
variable "tag" {
  default = "my"
  
}