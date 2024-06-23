# Variable for the VPC name
variable "vpc_name" {
  description = "Name of the VPC"  # Description for the VPC name variable
  default = "Samplevpc"            # Default name for the VPC
}

# Variable for the VPC CIDR block
variable "VPC_CIDR_Block" {
  description = "CIDR block for the VPC"  # Description for the VPC CIDR block variable
  default = "10.0.0.0/16"                  # Default CIDR block for the VPC
}
