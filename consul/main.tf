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
    region =  "us-east-1"
   
 }
