terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "densou"

    workspaces {
      name = "example"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

variable "bucket-name" {}

resource "aws_s3_bucket" "main" {
  bucket = var.bucket-name
}

//module "ec2" {
//  source = "./ec2"
//
//  tags = {
//    Name = "Test"
//    ManagedBy = "Terraform"
//  }
//}
//
//output "ec2_arn" {
//  value = module.ec2.arn
//}