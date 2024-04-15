module "sg" {
    source = "./modules/sg"
    vpc_id_sg = module.vpc.vpcid
      
}

//varibale

variable "ingress_rulw" {
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