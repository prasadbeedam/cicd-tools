terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.81.0"
    }
  }

  backend "s3" {
    bucket = "helloworldapp-dev"
    key    = "hello-locking-dev-tools"
    region = "us-east-1"
    dynamodb_table = "hello-locking-dev"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}