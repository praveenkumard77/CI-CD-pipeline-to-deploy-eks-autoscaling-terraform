provider "aws" {
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
    bucket = "terraform-statefile-bucket-1"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
