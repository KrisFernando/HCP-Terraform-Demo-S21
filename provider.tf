terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.79.0"
    }
  }
}

provider "vault" {}

provider "aws" {
  region = "us-east-2"
  access_key = data.vault_generic_secret.awsvault.data["key"]
  secret_key = data.vault_generic_secret.awsvault.data["secret"]
}
