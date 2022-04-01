resource "aws_db_instance" "app_demo_db" {
  identifier_prefix     = lower(replace("${var.prefix_name}database","-", ""))
  db_name               = var.db_name
  username              = var.username
  password              = random_string.password.id

  engine                = var.engine
  engine_version        = var.engine_version
  instance_class        = var.instance_class
  allocated_storage     = var.storage.minimum
  max_allocated_storage = var.storage.maximum

  db_subnet_group_name  = aws_db_subnet_group.database-subnets.id
  vpc_security_group_ids  = [var.security_group_ids]

  skip_final_snapshot   = true

  tags = merge({Name = "${var.prefix_name}-database"},
              var.tags)
}

resource "random_string" "password" {
  length           = 16
  special          = true
}

resource "aws_db_subnet_group" "database-subnets" {
  subnet_ids = data.aws_subnets.database-subnets.ids

  tags = merge({Name = "${var.prefix_name}-subnet-databse-group"},
              var.tags)
}