variable "db_name" {}
variable "db_instance_class" {}
variable "db_username" {}
variable "db_password" {
  sensitive = true
}
variable "db_sg_ids" {
  type = list(string)
}
variable "subnet_ids" {
  type = list(string)
}
