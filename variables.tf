variable "region" {
  default = "eu-north-1"
}

variable "vpc_cidr" {}
variable "vpc_name" {}
variable "public_subnets" { type = list(string) }
variable "azs" { type = list(string) }

variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "ec2_name" {}

variable "bucket_name" {}

variable "role_name" {}


variable "db_name" {
  type = string
}

variable "db_instance_class" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "db_sg_ids" {
  type = list(string)
}

variable "subnet_ids" {
  type = list(string)
}
