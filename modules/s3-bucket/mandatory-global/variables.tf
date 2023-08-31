variable "bucket" {
  description = "(Optional, Forces new resource) The name of the bucket. If omitted, Terraform will assign a random, unique name."
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