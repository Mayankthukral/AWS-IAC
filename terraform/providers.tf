terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias = "usEast-1"
}

provider "aws" {
  region = "ca-central-1"
  alias = "ca-central"
}