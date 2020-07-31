provider "aws" {
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  region = var.AWS_REGION
}


data "aws_region" "current" {
}

data "aws_availability_zones" "available" {
}

provider "http" {
}

terraform {
    backend "s3" {
    bucket = "s3bucket-terraform-statefile"
    key    = "terraform.tfstate"
    region = "us-west-2"
    shared_credentials_file = "/var/lib/jenkins/workspace/terraform.tfvars"
    profile = "default"
  }
}
