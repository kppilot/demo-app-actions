terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.59.0"
    }
  }
}

data "aws_secretsmanager_secret_version" "creds"{
  secret_id = "creds"
}
locals {
  app_name = "ecs_deploy_gh_actions"
  gh_org_name = "sheikhasim"

creds = jsondecode(
    data.aws_secretsmanager_secret_version.creds.secret_string
  )

}

provider "aws"{
  aws_access_key= locals.creds.AWS_ACCESS_KEY
  aws_secret_key = locals.creds.AWS_SECRET_KEY
  region = var.aws_region
  default_tags {
    application = local.app_name
  }
}