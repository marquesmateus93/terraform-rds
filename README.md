# Terraform RDS

## About:

This module creates a Default MySQL instance in Amazon RDS service.

## How To Deploy:

This module should be consumed by [Terragrunt App Demo](https://github.com/Dev-Marques-Ops-Live-Infrastructure/terragrunt-app-demo) Project.

## Security:

- **MySQL Instance:** Restricted access from application hosties IP range with 3306 port.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.app_demo_db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.database-subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |
| [random_string.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [aws_subnets.database-subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Databse name. | `string` | `"app_demo"` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | SGBD name. | `string` | `"mysql"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | Database version. | `string` | `"5.7"` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | Instance type. | `string` | `"db.t2.micro"` | no |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | Resources prefix name. | `string` | `""` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | Database security groups. | `string` | `""` | no |
| <a name="input_storage"></a> [storage](#input\_storage) | Minimum and maximum storage size. | `map(number)` | <pre>{<br>  "maximum": 50,<br>  "minimum": 10<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tracking tags. | `map(string)` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | Databse username. | `string` | `"app_demo_user"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_address"></a> [db\_address](#output\_db\_address) | Database instance address. |
| <a name="output_db_name"></a> [db\_name](#output\_db\_name) | Database name. |
| <a name="output_db_password"></a> [db\_password](#output\_db\_password) | Database instance password. |
| <a name="output_db_username"></a> [db\_username](#output\_db\_username) | Database instance name. |
