output "db_address" {
  value = aws_db_instance.app_demo_db.address
}

output "db_name" {
  value = var.db_name
}

output "db_username" {
  value = var.username
}

output "db_password" {
  value = random_string.password.id
}