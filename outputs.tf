output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "iam_role_arn" {
  value = module.iam.role_arn
}

output "rds_endpoint" {
  value = module.RDS.rds_endpoint
}