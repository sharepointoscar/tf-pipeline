resource "aws_s3_bucket" "artifacts-bucket" {
  bucket = var.artifacts_bucket_name
  acl    = "private"

  tags = {
    Name        = "static-web-build-${var.env}"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "static-web-bucket" {
  bucket = var.static_web_bucket_name
  acl    = "private"

  tags = {
    Name        = var.static_web_bucket_name
    Environment = "Dev"
  }
}