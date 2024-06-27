module "vpc" {
  source          = "./module/VPC"
  vpc_cidr_block  = var.env_vpc_cidr_block 
  vpc_name        = var.env_vpc_name
}

module "subnet" {
  source                      = "./module/subnet"
  subnet_vpc_id =              module.vpc.module_vpc_id
  public_subnet_cidr_blocks   = ["10.0.1.0/24", "10.0.2.0/24"] # Adjust as needed
  private_subnet_cidr_blocks  = ["10.0.11.0/24", "10.0.12.0/24"] # Adjust as needed
  availability_zones         = ["ca-central-1a", "ca-central-1b"]
  subnet_name                 = var.env_subnet_name
}

module "nat_gateway" {
  source      = "./module/nat_gateway"
  public_subnet_ids  = module.subnet.module_public_subnet_ids
  nat_gateway_name = var.env_nat_gateway_name
}

module "route_tables" {
  source = "./module/route_tables"
  route_table_vpc_id = module.vpc.module_vpc_id
  route_table_public_subnet_ids = module.subnet.module_public_subnet_ids
  route_table_private_subnet_ids = module.subnet.module_private_subnet_ids
  route_table_public_internet_gateway_ids = module.internet_gateway.module_internet_gateway_id[*]
  route_table_private_nat_gateway_ids = module.nat_gateway.nat_gateway_ids[*]
  route_table_public_name = var.env_route_table_public_name
  route_table_private_name = var.env_route_table_private_name
}

module "internet_gateway" {
  source = "./module/internet_gateway"
  internet_gateway_vpc_id = module.vpc.module_vpc_id
}

module "security_groups" {
  source = "./module/security_groups"
  alb_security_group_name =  var.env_alb_security_group_name 
  alb_security_group_vpc_id = module.vpc.module_vpc_id
  instance_security_group_name = var.env_instance_security_group_name
  instance_security_group_vpc_id = module.vpc.module_vpc_id
  alb_security-group_id = module.security_groups.alb_security_group_id
}

module "key_pair"{
  source = "./module/key_pair"
  key_name = var.env_key_name
}

module "auto_scaling" {
  source              = "./module/auto_scaling"
  launch_configuration_name = var.env_launch_configuration_name
  launch_configuration_ami_id = var.env_launch_configuration_ami_id
  launch_configuration_instance_type = var.env_launch_configuration_instance_type
  launch_configuration_key_name = module.key_pair.module_key_pair_name
  launch_configuration_security_group_ids = [module.security_groups.instance_security_group_id]
  
  autoscaling_group_min_size = var.env_autoscaling_group_min_size
  autosacling_group_max_size = var.env_autoscaling_group_max_size
  autosacling_group_desired_capacity = var.env_autoscaling_group_desired_capacity
  autoscaling_group_name = var.env_autoscaling_group_name
  autosacling_group_private_subnet_ids = module.subnet.module_private_subnet_ids

}