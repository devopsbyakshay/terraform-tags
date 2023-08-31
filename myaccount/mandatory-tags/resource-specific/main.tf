module "bucket" {
  source = "../../../modules/s3-bucket/mandatory-resource-specific"
  bucket = "SOME_BUCKET_NAME"
  consumer = "applicationA"
  producer = "applicationB"
}