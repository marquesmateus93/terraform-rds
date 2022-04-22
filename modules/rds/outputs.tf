output "db_address" {
  description = "Database instance address."
  value = aws_db_instance.app_demo_db.address
}

output "db_name" {
  description = "Database name."
  value = var.db_name
}

output "db_username" {
  description = "Database instance name."
  value = var.username
}

output "db_password" {
  description = "Database instance password."
  value = random_string.password.id
}