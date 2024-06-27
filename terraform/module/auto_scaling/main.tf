

resource "aws_launch_configuration" "main" {
  name          = var.launch_configuration_name
  image_id      = var.launch_configuration_ami_id
  instance_type = var.launch_configuration_instance_type
  key_name      = var.launch_configuration_key_name
  

  security_groups = var.launch_configuration_security_group_ids

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "main" {
  launch_configuration = aws_launch_configuration.main.id
  min_size             = var.autoscaling_group_min_size
  max_size             = var.autosacling_group_max_size
  desired_capacity     = var.autosacling_group_desired_capacity
  vpc_zone_identifier  = var.autosacling_group_private_subnet_ids

  tag {
    key                 = "Name"
    value               = var.autoscaling_group_name
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
