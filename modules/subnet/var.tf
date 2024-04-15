variable "subnet_list_with_ip" {
  type = list(string)
  default = ["192.168.0.0/25", "192.168.0.128/25"]
  
}
variable "vpc_id" {
  
  default = ""
  
}
variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]  # Add your desired availability zones
}
