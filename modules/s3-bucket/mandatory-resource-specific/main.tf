resource "aws_s3_bucket" "this" {

  bucket = var.bucket
  #These are resource specific tags
  tags =
    {
      Name     = var.bucket
      Producer = var.producer
      Consumer = var.consumer
    }

}