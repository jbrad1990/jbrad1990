terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {

  shared_credentials_file = "/Users/BradleyJ/.aws/credentials"
  region                  = "us-east-1"
  profile                 = "vscode"
  access_key              = "AKIAXOYEYDDRFDATILI6"
  secret_key              = "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"
}

resource "aws_budgets_budget" "like-and-subscribe" {
  name              = "monthly-budget"
  budget_type       = "COST"
  limit_amount      = "50.0"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2023-01-01_00:01"
}





