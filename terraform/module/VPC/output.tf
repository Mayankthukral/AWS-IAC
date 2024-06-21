# Output to display the VPC ID
output "vpc_id" {
  value = aws_vpc.my_vpc.id  # The ID of the VPC created by the aws_vpc resource
}
