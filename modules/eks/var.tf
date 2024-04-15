variable "subnet_eks" {
  type    = list(string)
  default = ["subnet-1", "subnet-2"]  # Add your subnet IDs here
}

variable "subnet_eks_nodegrp" {
  type    = list(string)
  default = ["subnet-1", "subnet-2"]  # Add your subnet IDs here
}