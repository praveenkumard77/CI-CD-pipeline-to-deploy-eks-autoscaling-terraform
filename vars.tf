variable "AWS_REGION" {
  default = "us-west-2"
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}
