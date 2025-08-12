terraform {
  required_version = ">= 1.5.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.2"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5"
    }
  }

  backend "s3" {
    key     = "backend/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
}
