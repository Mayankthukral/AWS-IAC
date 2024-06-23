terraform {
  # Specifies that Terraform version 1.0 or newer is required
  required_version = ">=1.0"

  # Defines the required Terraform providers and their versions
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.55.0"  # Requires AWS provider version 4.7 or newer
    }
  }

  # Configures Terraform to use a remote backend (Terraform Cloud)
  backend "remote" {
    hostname     = "app.terraform.io"  # Hostname of Terraform Cloud
    organization = "MAYANK-THUKRAL"  # Your Terraform Cloud organization name

    # Specifies the workspace within the organization to use
    workspaces {
      name = "validate_terraform"  # Name of the workspace
    }
  }
}