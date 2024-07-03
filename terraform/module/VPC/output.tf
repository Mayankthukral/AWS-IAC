# Output to display the VPC ID
output "module_vpc_id" {
  value = aws_vpc.main.id  # The ID of the VPC created by the aws_vpc resource
}

