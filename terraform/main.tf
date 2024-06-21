# Define a module to create a VPC
module "VPC" {
  source = "./module/VPC"                # Source path to the VPC module
  VPC_CIDR_Block = var.env_vpc_cidr      # CIDR block for the VPC, passed as a variable
  vpc_name = var.env_vpc_name            # Name of the VPC, passed as a variable
}

# Define a module to create a subnet
module "subnet" {
  source = "./module/subnet"             # Source path to the subnet module
  subnet_vpc_id = module.VPC.vpc_id      # VPC ID where the subnet will be created, fetched from the VPC module output
  subnet_cidr_block = var.env_subnet_cidr_block  # CIDR block for the subnet, passed as a variable
  subnet_name = var.env_subnet_name      # Name of the subnet, passed as a variable
}

