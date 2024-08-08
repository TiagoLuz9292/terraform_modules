terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

provider "aws" {
  alias  = "subaccount"
  region = var.aws_region
}

provider "aws" {
  alias  = "mainaccount"
  region = var.aws_region
}