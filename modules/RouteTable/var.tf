variable "subnet_id_assication" {
    type = list(string)
    default = ["", ""]
    
}

variable "vpc_id_Route" {
  default = ""
}

variable "internet_gateway_id" {
    default = ""
  
}