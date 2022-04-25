variable "aws_access_key" {
  default = ${secrets.DEV_AWS_ACCESS_KEY_ID}
  description = "Access key"
  type = string
}

variable "aws_secret_key" {
  default = ${secrets.DEV_AWS_SECRET_ACCESS_KEY}
  description = "Access secret"
  type = string
}

variable "aws_region" {
  default = ${secret.aws_region}
  description = "Region"
  type = string
}
