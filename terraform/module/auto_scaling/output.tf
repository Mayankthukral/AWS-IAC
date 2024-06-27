output "launch_configuration_id" {
  description = "ID of the launch configuration"
  value       = aws_launch_configuration.main.id
}

output "autoscaling_group_id" {
  description = "ID of the Auto Scaling group"
  value       = aws_autoscaling_group.main.id
}
