terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.79.0"
    }
  }
}

provider "hcp" {
  workload_identity {
    resource_name = "iam/project/d8df60a8-99d8-4876-a00d-fea2f53133bd/service-principal/cha-service-principle"
  }
}

provider "aws" {
  region = "us-east-2"
  access_key = data.hcp_vault_secrets_app.awsvault.secrets["key"]
  secret_key = data.hcp_vault_secrets_app.awsvault.secrets["secret"]
}
