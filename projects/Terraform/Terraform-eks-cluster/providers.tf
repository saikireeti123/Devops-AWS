terraform {
  backend "s3" {
    bucket = "terraform-ts-state"
    key    = "terraform-eks/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47.0"

    }
  }
}