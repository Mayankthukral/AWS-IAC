
module "VPC" {
  source = "./module/VPC"
  VPC_CIDR_Block = var.env_vpc_cidr
  vpc_name = var.env_vpc_name
  
}
