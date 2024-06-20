
resource "aws_vpc" "my_vpc" {
  cidr_block           = var.VPC_CIDR_Block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}




