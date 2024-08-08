provider "aws" {
  alias  = "subaccount"
  region = var.aws_region
}

provider "aws" {
  alias  = "mainaccount"
  region = var.aws_region
}
