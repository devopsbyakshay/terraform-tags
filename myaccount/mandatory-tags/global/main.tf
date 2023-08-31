module "bucket" {
  source = "../../../modules/s3-bucket/mandatory-global"
  bucket = "SOME_BUCKET_NAME"
  account = "SOME_ACCOUNT_NAME"
  environment = "PROD"
}