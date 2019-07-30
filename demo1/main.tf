provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "main" {
  ami = "ami-0ac05733838eabc06"
  instance_type = "t2.nano"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "example-vesol"
}
