variable "aws_region" {}
variable "ACCOUNT_ID" {}
variable "ecr_repo" {}
variable "image_version" {
    type = string
}

variable "image_source" {
  default = "sheikh111/demo-actions-repo"
}
