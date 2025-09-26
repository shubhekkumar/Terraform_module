

module "vpc" {
  source         = "./modules/vpc"
  cidr_block     = var.vpc_cidr
  name           = var.vpc_name
  public_subnets = var.public_subnets
  azs            = var.azs
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_ids[0]
  key_name      = var.key_name
  name          = var.ec2_name
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "iam" {
  source    = "./modules/iam"
  role_name = var.role_name
}

module "RDS" {
  source            = "./modules/RDS"
  db_name           = var.db_name
  db_instance_class = var.db_instance_class
  db_username       = var.db_username
  db_password       = var.db_password
  db_sg_ids         = var.db_sg_ids
  subnet_ids        = var.subnet_ids
}