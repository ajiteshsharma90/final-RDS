resource "aws_secretsmanager_secret" "my_password_secret" {
  name = "/dev/mysql"
}

data "aws_secretsmanager_secret" "username" {
  secret_username = aws_secretsmanager_secret.my_password_secret.username
}

data "aws_secretsmanager_secret" "password" {
  secret_password = aws_secretsmanager_secret.my_password_secret.password
}


resource "aws_db_instance" "default" {
allocated_storage = 20
identifier = "testinstance"
storage_type = "gp2"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.m4.large"
name = "test"
username = data.aws_secretsmanager_secret.username
password = data.aws_secretsmanager_secret.password
parameter_group_name = "default.mysql5.7"
}
