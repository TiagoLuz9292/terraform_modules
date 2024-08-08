terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
    aws.subaccount = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
    aws.mainaccount = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}