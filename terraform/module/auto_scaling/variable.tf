

variable "launch_configuration_name" { }

variable "launch_configuration_ami_id" {
  description = "AMI ID to use for the instances"
  type        = string
}

variable "launch_configuration_instance_type" {
  description = "Instance type for the instances"
  type        = string
}

variable "launch_configuration_key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "launch_configuration_security_group_ids" {

}

variable "autoscaling_group_min_size" {
  description = "Minimum size of the Auto Scaling group"
  type        = number
  default     = 1
}

variable "autosacling_group_max_size" {
  description = "Maximum size of the Auto Scaling group"
  type        = number
  default     = 3
}

variable "autosacling_group_desired_capacity" {
  description = "Desired capacity of the Auto Scaling group"
  type        = number
  default     = 2
}

variable "autosacling_group_private_subnet_ids" {
  
}

variable "autoscaling_group_name" { }