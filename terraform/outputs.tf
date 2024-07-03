output "vpc_id" {
  value = module.vpc.module_vpc_id
}

output "public_subnet_ids" {
  value = module.subnet.module_public_subnet_ids
}

output "private_subnet_ids" {
  value = module.subnet.module_private_subnet_ids
}

output "nat_gateway_ids" {
  value = module.nat_gateway.nat_gateway_ids
}
