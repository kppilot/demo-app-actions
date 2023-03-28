terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.59.0"
    }

    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
 
}


locals {
  app_name = "ecs_deploy_gh_actions"
  gh_org_name = "sheikhasim"

}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}


provider "aws" {
  region = var.aws_region
   access_key = "AKIAZEOOMUTM24GMWVY7"
  secret_key = "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"
  default_tags {
    tags = {
      application = local.app_name
    }
  }
}