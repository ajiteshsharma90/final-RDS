provider "aws" {
    access_key = "AKIASJAGHY2P4DBQSQOO"
    secret_key = "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"
    #access_key = local.aws_creds.AWS_ACCESS_KEY
    #secret_key = local.aws_creds.AWS_SECRET_KEY
    region = var.aws_region
}
