resource "aws_s3_bucket" "this" {

  bucket = var.bucket

  #These are global mandotary tags
  tags =
    {
      Account     = var.account
      Environment = var.environment
    }
}