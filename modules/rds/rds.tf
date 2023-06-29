resource "aws_db_instance" "app_demo_db" {
  identifier_prefix     = lower(replace("${var.prefix_name}database","-", ""))
  db_name               = jsondecode(data.aws_secretsmanager_secret_version.rds-secret.secret_string)["name"]
  username              = jsondecode(data.aws_secretsmanager_secret_version.rds-secret.secret_string)["username"]
  password              = jsondecode(data.aws_secretsmanager_secret_version.rds-secret.secret_string)["password"]

  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  allocated_storage     = var.storage.minimum
  max_allocated_storage = var.storage.maximum

  db_subnet_group_name    = aws_db_subnet_group.database-subnets.id
  vpc_security_group_ids  = [var.security_group_ids]

  skip_final_snapshot   = true

  tags = merge({Name = "${var.prefix_name}-database"},
              var.tags)
}

resource "aws_db_subnet_group" "database-subnets" {
  subnet_ids = data.aws_subnets.database-subnets.ids

  tags = merge({Name = "${var.prefix_name}-subnet-databse-group"},
              var.tags)
}