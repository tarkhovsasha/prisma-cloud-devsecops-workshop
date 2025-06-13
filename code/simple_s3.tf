provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "0d7a7c89e1576b1bf582a87b8b4e75c81715cd4a"
    git_file             = "code/simple_s3.tf"
    git_last_modified_at = "2025-06-13 02:01:42"
    git_last_modified_by = "191038348+tarkhovsasha@users.noreply.github.com"
    git_modifiers        = "191038348+tarkhovsasha/tprendervill"
    git_org              = "tarkhovsasha"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "57841522-4eeb-45cb-af50-16d38200794e"
  }
}


