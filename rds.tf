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
  engine               = "sqlserver-se"
  engine_version       = "14.00.3401.1.v1"
  instance_class       = "db.r5.xlarge"
  #name = "test4"
  username = local.db_creds.username
  password = local.db_creds.password
  parameter_group_name = "default.sqlserver-se-14.0"
}
