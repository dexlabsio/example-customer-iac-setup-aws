provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "dexlabs-tf-state-store-customerx"
    key  = "terraform/state/default.tfstate"
    region = "us-east-1"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.41.0"
    }
  }
}
