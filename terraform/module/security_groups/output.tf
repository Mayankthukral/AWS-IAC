output "instance_security_group_id" {
  value = aws_security_group.instance_sg.id
}

output "alb_security_group_id" {
  value = aws_security_group.alb_sg.id
}
