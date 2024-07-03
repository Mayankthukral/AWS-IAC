

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
    enable_dns_support   = true                # Enable DNS support in the VPC
    enable_dns_hostnames = true                # Enable DNS hostnames in the VPC

  tags = {
    Name = var.vpc_name
  }
}

