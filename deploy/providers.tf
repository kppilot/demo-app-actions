terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.59.0"
    }
  }
}

locals {
  app_name = "ecs_deploy_gh_actions"
  gh_org_name = "sheikhasim"

}

provider "aws" {
  region = "ap-northeast-1"
  profile = "kpilot"
  default_tags {
    tags = {
      application = local.app_name
    }
  }
}