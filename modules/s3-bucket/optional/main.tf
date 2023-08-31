
resource "aws_s3_bucket" "this" {
  bucket = var.bucket

  #These are user defined optional tags
  tags =  var.tags
}