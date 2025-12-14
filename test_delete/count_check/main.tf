provider "aws" {
  region = "us-east-1"
}

variable "bucket_names" {
  type = list(string)
  default = [ "jagg", "ragg", "oggg" ]
}

resource "aws_s3_bucket" "testing" {
  count = length(var.bucket_names)
  bucket = var.bucket_names[count.index]
}