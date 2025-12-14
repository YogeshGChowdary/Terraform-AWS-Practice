provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test" {
  count = var.count_value
  instance_type = var.instance_type[count.index]
  ami = var.ami_id
}