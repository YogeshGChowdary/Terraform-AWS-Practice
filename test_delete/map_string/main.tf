provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "testing" {
  ami = "ami-111"
  for_each = var.instance_type
  instance_type = each.value
}

variable "instance_type" {
    type = map(string)

    
default = {
    app-1   = "t2.micro"
    app-2   = "t2.micro"
    batch-1 = "t2.large"
    batch-2 = "t2.large"
    api-1   = "t3.small"
  }

}