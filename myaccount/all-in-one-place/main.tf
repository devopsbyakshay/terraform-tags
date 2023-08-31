module "bucket" {
  source = "../../modules/s3-bucket/all-in-one-place"
  bucket = "SOME_BUCKET_NAME"

  account = "SOME_ACCOUNT_NAME"
  environment = "PROD"

  consumer = "applicationA"
  producer = "applicationB"

  tags = {
    some_tag_name = "some_tag_value"
  }

}