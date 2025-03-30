terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket         = "devops-automatio-bucket"
    key            = "tf-state-setup"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "devops-automatio-dynomodb-table"
  }
}

provider "aws" {
  region = ap-south-1
  default_tags {
    tags = {
      Environment = terraform.workspace
      project     = var.project
      contact     = var.contact
      ManageBy    = "Terraform/setup"
    }
  }
}