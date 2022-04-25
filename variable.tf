variable "aws_access_key" {
  default = "${var.aws_access_key}"
  description = "Access key"
  type = string
}

variable "aws_secret_key" {
  default = "${var.aws_secret_key}"
  description = "Access secret"
  type = string
}

variable "aws_region" {
  default = "us-west-2"
  description = "Region"
  type = string
}
