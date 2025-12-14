provider "aws" {
  region = "us-east-1"
}

variable "bucket_names" {
  type = set(string)
  default = [ "jagg", "ragg", "oggg" ]
}

resource "aws_s3_bucket" "testing" {
  for_each = var.bucket_names
  bucket = each.value
}