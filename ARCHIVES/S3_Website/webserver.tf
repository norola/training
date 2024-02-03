terraform {
backend "s3" {
  bucket         = "mydevops-tf-state"
   key            = "D:\terraform\terraform.tfstate"
   region         = "eu-west-1"
   dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
    region = var.AWS_REGION
   
 }

 module "aws_s3_bucket" {
   source = "./modules/aws-s3-static-website-bucket"
    bucket_name = "devopssec-terraform"
}

module "aws_s3_bucket_website_configuration" {
   source = "./modules/aws-s3-static-website-bucket"
   bucket_name = "devopssec-terraform"
}


