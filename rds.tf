data "aws_secretsmanager_secret_version" "creds" {
  # Fill in the name you gave to your secret
  secret_id = "db-creds"
}

locals {
  db_creds = jsondecode(
    data.aws_secretsmanager_secret_version.creds.secret_string
  )
}


resource "aws_db_instance" "default" {
allocated_storage = 20
identifier = "testinstance3"
engine               = "sqlserver-ex"
  engine_version       = "15.00.4153.1.v1"
  family               = "sqlserver-ex-15.0" # DB parameter group
  major_engine_version = "15.00"             # DB option group
  instance_class       = "db.t3.large"
name = "test4"
username = local.db_creds.username
password = local.db_creds.password
parameter_group_name = "default.sqlserver-ex15.0"
}
