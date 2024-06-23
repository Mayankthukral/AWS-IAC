# Define a variable for the VPC CIDR block
variable "env_vpc_cidr" {
  description = "CIDR block for the VPC" # Description for the variable
  default = "10.0.0.0/16"                # Default CIDR block for the VPC
}

# Define a variable for the VPC name
variable "env_vpc_name" {
  description = "Name of the VPC"        # Description for the variable
  default = "sample_vpc"                 # Default name for the VPC
}

# Define a variable for the subnet CIDR block
variable "env_subnet_cidr_block" {
  default = "10.0.0.0/24"                # Default CIDR block for the subnet, provides 251 usable IP addresses
}

# Define a variable for the subnet name
variable "env_subnet_name" {
  default = "sample_subnet"              # Default name for the subnet
}

