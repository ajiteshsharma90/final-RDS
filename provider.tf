provider "aws" {
    #access_key = local.aws_creds.AWS_ACCESS_KEY
    #secret_key = local.aws_creds.AWS_SECRET_KEY
    region = var.aws_region
}
