terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.0"
    }
  }

  backend "s3" {
    //bucket = "terraform-practice-lzb-001" //personal account
    bucket = "terraform-bucket-lzb-001" //sandbox account
    key    = "endpoint/terraform.tfstate"
    region = "ap-south-1" //sandbox
    //region = "eu-west-1"         //personal
    //use_lockfile = true
  }
}

provider "aws" {
  region = var.aws-region
}