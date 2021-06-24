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
  access_key =
  secret_key =
  region = "us-east-1"
}
resource "random_id" "tf_bucket_id" {
    count = 2
    byte_length = 2
}

resource "aws_s3_bucket" "tf_code" {
  count = "${var.number_of_instances}"
  bucket        = "terraform-bucket-${random_id.tf_bucket_id.*.dec[count.index]}"
  acl    = "private"
  force_destroy = "true"
  tags = {
    Name        = "tf_bucket-${count.index + 1}"
  }
}
