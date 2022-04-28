#data "aws_secretsmanager_secret_version" "creds" {
  # Fill in the name you gave to your secret
 # secret_id = "db-creds"
#}

#locals {
 # db_creds = jsondecode(
  #  data.aws_secretsmanager_secret_version.creds.secret_string
  #)
#}


resource "aws_db_instance" "default" {
  allocated_storage = 20
  identifier = "testinstance3"
  engine               = "sqlserver-se"
  engine_version       = "15.00.4153.1.v1"
  instance_class       = "db.r5.xlarge"
  license_model             = "license-included"
  #name = "test4"
  username = var.my_username
  password = var.my_password
  parameter_group_name = "default.sqlserver-se-15.0"
}
