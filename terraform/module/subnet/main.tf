# Resource to create a subnet in AWS
resource "aws_subnet" "mysubnet" {
  vpc_id = var.subnet_vpc_id     # The ID of the VPC where the subnet will be created
  cidr_block = var.subnet_cidr_block # The CIDR block for the subnet
  
  tags = {
    Name = var.subnet_name       # The name tag for the subnet
  }
}

