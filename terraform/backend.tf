# if the backend.tf is empty then it will be initialized on local server from the server where terraform is initialized.



# Following s3 bucket should exist before initializing terraform configuration
# Configure Terraform backend to AWS s3 bucket and dynamodb table
/*

terraform {
  backend "s3" {
    bucket         = "sample_s3_bucket"   # Name of the AWS S3 bucket to use for storing Terraform state
    key            = "terraform/state"    # Key (path) within the S3 bucket where Terraform state files will be stored
    region         = "ca-central-1"       # AWS region where the S3 bucket and DynamoDB table are located
    dynamodb_table = "sample_dynamodb_table"  # Name of the DynamoDB table used for locking state
  }
}

*/


# Following Storage Account and Container should exist before initializing terraform configuration
# Configure Terraform backend to use Azure Storage Account
/*

terraform {
  backend "azurerm" {
    resource_group_name   = "sample_resource_group"   # Name of the resource group where the Storage Account is located
    storage_account_name  = "newstorage_account_7833"  # Name of the Azure Storage Account to use as the backend
    container_name        = "terraform-state"    # Name of the Blob Storage container within the Storage Account
    key                   = "terraform.tfstate"  # Name of the Terraform state file within the container
  }
}

*/