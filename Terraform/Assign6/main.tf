terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  access_key = "AKIAYKTEMIFL53ACYMZY"
  secret_key = "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"
  region = "us-east-1"
}
resource "random_id" "tf_bucket_id" {
    byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
  bucket = "${var.project_name}-${random_id.tf_bucket_id.dec}"
  acl    = "private"
  force_destroy = "true"
  tags = {
    Name        = "tf_bucket"
  }
}