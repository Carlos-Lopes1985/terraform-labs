provider "aws" {

  region = "us-east-1"

}


terraform {

  required_providers {

    aws = {

       source = "hashicorp/aws"

      version = "~> 4.0.0"

    }

  }

  required_version = ">= 1.0"

}


resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-test-18062023"

  tags ={
    Name = "My-bucket"
    Environment = "Dev"
    ManagedBy ="Terraform"
  }
}