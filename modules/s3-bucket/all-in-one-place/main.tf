resource "aws_s3_bucket" "this" {

  bucket = var.bucket
  tags = merge(
    #These are user defined optional tags
    var.tags,

    #These are global mandotary tags
    {
      Account     = var.account
      Environment = var.environment
    },

    # tags with auto generated value
    {
      CreatedBy       = data.aws_caller_identity.current.user_id
      CreatedByArn    = data.aws_caller_identity.current.arn
      LaunchMonthYear = formatdate("MMM-YYYY", timestamp())
    },

    #These are resource specific tags
    {
      Name     = var.bucket
      Producer = var.producer
      Consumer = var.consumer
    }
  )

  lifecycle {
    ignore_changes = [
      # Ignore changes to tags
      tags["CreatedBy"], tags["CreatedByArn"], tags["LaunchMonthYear"],
    ]
  }
}