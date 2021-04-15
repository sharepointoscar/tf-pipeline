variable "env" {
  description = "Depolyment environment"
  default     = "dev"
}

variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}


variable "repository_branch" {
  description = "Repository branch to connect to"
  default     = "master"
}

variable "repository_owner" {
  description = "GitHub repository owner"
  default     = "jenkins-oscar"
}

variable "repository_name" {
  description = "GitHub repository name"
  default     = "skiapp"
}

variable "static_web_bucket_name" {
  description = "S3 Bucket to deploy to"
  default     = "static-web-example-bucket"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "artifacts-bucket"
}

variable "pipeline_name" {
  description = "The name of the AWS CodePipeline"
  type        = string
  default     = "static-site"
}
