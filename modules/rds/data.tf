data "aws_subnets" "database-subnets" {
  filter {
    name   = "tag:Name"
    values = ["Dev-Marques-Ops-database-vpc"]
  }
}

data "aws_secretsmanager_secret_version" "rds-secret" {
  secret_id = var.secrets_manager_id
}