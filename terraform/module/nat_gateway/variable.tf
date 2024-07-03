variable "public_subnet_ids" {
  description = "List of public subnet IDs where NAT Gateways will be deployed"
  type        = list(string)
}

variable "nat_gateway_name" {
  
}