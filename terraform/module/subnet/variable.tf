# Variable for VPC ID where the subnet will be created
variable "subnet_vpc_id" {
  description = "The ID of the VPC where the subnet will be created"  # Description for the VPC ID variable
}

# Variable for the subnet CIDR block
variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"  # Description for the subnet CIDR block variable
  default = "10.0.0.0/24"  # Default CIDR block for the subnet
}

# Variable for the subnet name
variable "subnet_name" {
  description = "Name of the subnet"  # Description for the subnet name variable
  default = "sample_subnet"  # Default name for the subnet
}
