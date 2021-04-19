resource "aws_s3_bucket" "artifacts-bucket" {
  bucket = var.artifacts_bucket_name
  acl    = "private"
  force_destroy = true
  tags = {
    Name        = "static-web-build-${var.env}"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "static-web-bucket" {
  bucket = var.static_web_bucket_name
  acl    = "private"
  force_destroy = true
  tags = {
    Name        = var.static_web_bucket_name
    Environment = "Dev"
  }
}