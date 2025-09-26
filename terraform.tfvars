region         = "eu-north-1"

# VPC
vpc_cidr       = "10.0.0.0/16"
vpc_name       = "my-vpc"
public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
azs            = ["eu-north-1a", "eu-north-1b"]

# EC2
ami            = "ami-043339ea831b48099"
instance_type  = "t3.micro"
key_name       = "key"
ec2_name       = "my-ec2"

# S3
bucket_name    = "my-tf-bucket-demo-by-sam-17"

# IAM
role_name      = "my-ec2-role"

# RDS
db_name           = "mydb"
db_instance_class = "db.t3.micro"
db_username       = "admin"
db_password       = "StrongPass123!"
db_sg_ids         = ["sg-0dc252aa6a0502b69"]
subnet_ids        = ["subnet-06cf4b451aee98972", "subnet-0662b21ceed963add"]
