resource "aws_db_subnet_group" "this" {
  name       = "my-db-subnet-group"
  subnet_ids = var.subnet_ids
}

resource "aws_db_instance" "this" {
  allocated_storage      = 20
  engine                 = "mysql"
  instance_class         = var.db_instance_class
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  vpc_security_group_ids = var.db_sg_ids
  db_subnet_group_name   = aws_db_subnet_group.this.name
  skip_final_snapshot    = true
}
