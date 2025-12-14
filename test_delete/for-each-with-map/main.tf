provider "aws" {
  region = "us-east-1"
}

variable "bucket_names" {
  type = map(string)
  default = {
    "dev-bucket" = "developeent env bucket"
    "prod-bucket" = "production env bucket"
  }

}

resource "aws_s3_bucket" "testing" {
  for_each = var.bucket_names
  bucket = each.key
  tags = {description = each.value}
}