provider "aws" {
  region = var.region
}
 
resource "aws_s3_bucket" "kops" {
  bucket = var.bucket_name
  acl    = "private"
}
 
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.kops.id
  versioning_configuration {
    status = "Enabled"
  }
}

