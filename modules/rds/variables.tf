variable "prefix_name" {
  description = "Resources prefix name."
  type        = string
  default     = ""
}

variable "db_name" {
  description = "Databse name."
  type        = string
  default     = "app_demo"
}

variable "username" {
  description = "Databse username."
  type        = string
  default     = "app_demo_user"
}

variable "secrets_manager_id" {
  description = "Secret Manager ID."
  type        = string
  default     = ""
}

#variable "password" {
#  description = "Database user password"
#  type        = string
#  default     = ""
#}


variable "engine" {
  description = "SGBD name."
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "Database version."
  type        = string
  default     = "5.7"
}

variable "instance_class" {
  description = "Instance type."
  type        = string
  default     = "db.t2.micro"
}

variable "storage" {
  description = "Minimum and maximum storage size."
  type        = map(number)
  default = {
    minimum = 10
    maximum = 50
  }
}

variable "security_group_ids" {
  description = "Database security groups."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tracking tags."
  type        = map(string)
}