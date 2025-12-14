variable "count_value" {
  default = 2
}

variable "instance_type"{
    default = ["t2.micro","t3.micro"]
}

variable "ami_id" {
  default = "ami-12345"
}