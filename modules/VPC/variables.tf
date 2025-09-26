variable "cidr_block" {}
variable "name" {}
variable "public_subnets" { type = list(string) }
variable "azs" { type = list(string) }