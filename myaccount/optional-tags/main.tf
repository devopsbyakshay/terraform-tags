module "bucket" {
  source = "../../modules/s3-bucket/optional"
  bucket = "SOME_BUCKET_NAME"

  tags = {
    some_tag_name = "some_tag_value"
  }

}