data "aws_iam_policy_document" "codepipeline_assume_policy" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["codepipeline.amazonaws.com"]
    }
  }
}

# Allows CloudFront to read from the website S3 bucket
data "aws_iam_policy_document" "sb_website_bucket_policy" {
  statement {
    effect      = "Allow"
    actions     = [
      "s3:Get*",
      "s3:List*",
    ]
    resources   = [
      "arn:aws:s3:::${var.bucket_name}",
      "arn:aws:s3:::${var.bucket_name}/*",
    ]

    principals {
      type          = "AWS"
      identifiers   = ["${aws_cloudfront_origin_access_identity.main.iam_arn}"]
    }
  }
}

data "aws_acm_certificate" "domain" {
  domain      = "${var.acm_certificate_domain}"
  types       = ["AMAZON_ISSUED"]
  most_recent = true
}


data "github_repository" "repo" {
  full_name = "${var.github_organization}/${var.github_repo}"
}

data "template_file" "buildspec_ci" {
  template = file("buildspec.yml")
}

data "template_file" "buildspec_deploy" {
  template = file("buildspec-deploy.yml")
}
