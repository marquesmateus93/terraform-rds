output "db_address" {
  description = "Database instance address."
  value = aws_db_instance.app_demo_db.address
}

output "db_name" {
  description = "Database name."
  value = aws_db_instance.app_demo_db.db_name
}

output "db_username" {
  description = "Database instance name."
  value = aws_db_instance.app_demo_db.username
}