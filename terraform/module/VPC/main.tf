# Resource to create a VPC in AWS
resource "aws_vpc" "my_vpc" {
  cidr_block           = var.VPC_CIDR_Block  # The CIDR block for the VPC
  enable_dns_support   = true                # Enable DNS support in the VPC
  enable_dns_hostnames = true                # Enable DNS hostnames in the VPC

  tags = {
    Name = var.vpc_name                      # The name tag for the VPC
  }
}

