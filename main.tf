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
    region = "us-east-1"
   
 }

 ############################################################
##
## NOTE: if you are deploying this in your production setup
## follow the instructions in the github repo on how to modify
## deploying with the defaults here as an example of the power
## of modules.
##
## REPO: https://github.com/hashicorp/terraform-aws-consul
##
############################################################
module "consul" {
  source = "test version"
}
