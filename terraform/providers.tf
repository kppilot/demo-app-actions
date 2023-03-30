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
  region = var.aws_region
  assume_role {
    role_arn = "arn:aws:iam::628034938073:role/github_actions_role"
  }
 
  default_tags {
    tags = {
      application = local.app_name
    }
  }
}