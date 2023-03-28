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
    region = "ap-northeast-2"
    profile = "test1"
  }
}


locals {
  app_name = "ecs_deploy_gh_actions"
  gh_org_name = "sheikhasim"

}

provider "aws" {
  region = var.aws_region
  profile = "test1"
  
   
  default_tags {
    tags = {
      application = local.app_name
    }
  }
}