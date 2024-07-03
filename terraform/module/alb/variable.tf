variable "alb_name" {
  description = "The name of the Application Load Balancer."
  type        = string
}

variable "alb_subnets" {
  description = "The subnets to attach to the ALB."
  type        = list(string)
}

variable "alb_security_groups_id" {
  description = "The security group IDs to attach to the ALB."
  type        = list(string)
}

variable "alb_target_group_name" {
  description = "The name of the ALB target group."
  type        = string
}

variable "alb_target_group_vpc_id" {
  description = "The VPC ID for the ALB target group."
  type        = string
}


variable "target_group_attach_autoscale_name" {
  description = "The name of the Auto Scaling group to attach to the target group."
  type        = string
}


