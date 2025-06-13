provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "7b72e74a2d50f00870d84f544aee27f9883cfb57"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-13 02:08:54"
    git_last_modified_by = "191038348+tarkhovsasha@users.noreply.github.com"
    git_modifiers        = "191038348+tarkhovsasha"
    git_org              = "tarkhovsasha"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "fbec6fcb-1887-4ded-a4b0-dba547452804"
  }
}

resource "aws_s3_bucket_versioning" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
