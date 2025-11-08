terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.0"
    }
  }

  backend "s3" {
    bucket = "terraform-bucket-lzb-001"
    key    = "endpoint/terraform.tfstate"
    region = "ap-south-1"
    //use_lockfile = true
  }
}

provider "aws" {
  region = var.aws-region
}