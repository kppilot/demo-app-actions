terraform {
    backend "s3" {
    bucket = "demoapp_bucket"
    key    = "state/terraform.tfstate"
    region = "ap-northeast-2"
    profile = "test1"
  }
}