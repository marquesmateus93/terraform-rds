data "aws_subnets" "database-subnets" {
  filter {
    name   = "tag:Name"
    values = ["Dev-Marques-Ops-database-vpc"]
  }
}