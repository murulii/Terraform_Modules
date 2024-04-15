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