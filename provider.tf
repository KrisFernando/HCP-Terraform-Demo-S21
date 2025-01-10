terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.79.0"
    }
  }
}

# provider "vault" {}

provider "aws" {
  region = "us-east-2"
  access_key = data.hcp_vault_secrets_app.awsvault.secrets["key"]
  secret_key = data.hcp_vault_secrets_app.awsvault.secrets["secret"]
}
