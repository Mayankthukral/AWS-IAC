# Variable for VPC ID where the subnet will be created
variable "subnet_vpc_id" {
  description = "The ID of the VPC where the subnet will be created"  # Description for the VPC ID variable
}



variable "public_subnet_cidr_blocks" {
  description = "CIDR block for the private subnet"  # Description for the subnet CIDR block variable  # Default CIDR block for the subnet
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR block for the private subnet"  # Description for the subnet CIDR block variable  # Default CIDR block for the subnet
}

variable "subnet_name" {
  description = "Name of the subnet"  # Description for the subnet name variable
  default = "sample_subnet"
}

variable "availability_zones" {
  description = "List of Availability Zones for the subnets"
  type        = list(string)
}
  
