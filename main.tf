terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.14.0"
    }
  }

  backend "s3" {
    bucket = "terraform-practice-lzb-001" //personal account
    //bucket = "terraform-bucket-lzb-001"       //sandbox account
    key    = "endpoint/terraform.tfstate"
    region = "eu-west-1"
    //use_lockfile = true
  }
}

provider "aws" {
  region = var.aws-region
}