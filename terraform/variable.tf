variable "env_vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "env_vpc_name" {
  description = "Name for the VPC"
  type        = string
}

variable "env_subnet_name" {
  description = "Base name for subnets"
  type        = string
}

variable "env_nat_gateway_name" {
  description = "Name for the NAT gateway"
  type        = string
}

variable "env_route_table_public_name" { }
variable "env_route_table_private_name" { }


variable "env_launch_configuration_name" {
  description = "Name for the launch configuration"
  type        = string
}

variable "env_launch_configuration_ami_id" {
  description = "AMI ID for the launch configuration"
  type        = string
}

variable "env_launch_configuration_instance_type" {
  description = "Instance type for the launch configuration"
  type        = string
}



variable "env_autoscaling_group_min_size" {
  description = "Minimum size for the autoscaling group"
  type        = number
}

variable "env_autoscaling_group_max_size" {
  description = "Maximum size for the autoscaling group"
  type        = number
}

variable "env_autoscaling_group_desired_capacity" {
  description = "Desired capacity for the autoscaling group"
  type        = number
}

variable "env_autoscaling_group_name" {
  description = "Name for the autoscaling group"
  type        = string
}

variable "env_instance_security_group_name" {
  description = "name of application load balancer security group name"
  type = string
}

variable "env_alb_security_group_name" {
  description = "name of autoscalling instance security group name"
  type = string
}

variable "env_key_name" {
  type = string
}

variable "env_alb_name" {
  description = "The name of the Application Load Balancer"
  type        = string
}


variable "env_alb_target_group_name" {
  description = "The name of the target group for the Application Load Balancer"
  type        = string
}




variable "env_target_group_attach_autoscale_name" {
  description = "The name of the Auto Scaling group to attach to the target group"
  type        = string
}
