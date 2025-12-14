resource "aws_s3_bucket" "bucket" {
  for_each = var.bucket_name
  bucket = each.key
}