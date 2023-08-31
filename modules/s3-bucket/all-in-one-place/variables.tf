variable "bucket" {
  description = "(Optional, Forces new resource) The name of the bucket. If omitted, Terraform will assign a random, unique name."
  type        = string
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}

data "aws_caller_identity" "current" {}

variable "producer" {
  description = "this will contain a list of applications which are producing in s3"
  type        = string
}

variable "consumer" {
  description = "this will contain a list of applications which are consuming from s3"
  type        = string
}

variable "environment" {
  description = "default env"
  type        = string

}

variable "account" {
  description = "default account"
  type        = string
}