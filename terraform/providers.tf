terraform {
  required_providers {
       aws = {
      source = "hashicorp/aws"
      version = "~> 4.59.0"
      }
}

backend "s3" {
    bucket = "demoapp_bucket"
    key    = "state/terraform.tfstate"
    region = var.aws_region
  }
}


locals {
  app_name = "ecs_deploy_gh_actions"
  gh_org_name = "sheikhasim"

}

provider "aws" {
  region = var.aws_region
  access_key = "AKIAZEOOMUTM5GDEMEHP"
  secret_key = "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"
   
  default_tags {
    tags = {
      application = local.app_name
    }
  }
}