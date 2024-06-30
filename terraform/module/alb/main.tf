
resource "aws_lb" "alb" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  subnets            = var.alb_subnets
  security_groups =  var.alb_security_groups_id

  enable_deletion_protection = false
  /*
   access_logs {
    bucket  = var.alb_accesslog_s3_id
    prefix  = "test-lb"
    enabled = true
  }
*/
  tags = {
    Name = "MyALB"
  }
}

resource "aws_lb_target_group" "alb_target_group" {
  name     = var.alb_target_group_name
  port     = 80
  protocol = "HTTP"
  target_type = "instance"
  vpc_id   = var.alb_target_group_vpc_id

  health_check {
    path                = "/"
    protocol = "HTTP"
    interval            = 30
    timeout             = 10
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }
}


resource "aws_lb_listener" "alb_listner" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.alb_target_group.arn
  }
}

# Create a new ALB Target Group attachment
resource "aws_autoscaling_attachment" "target_group_attach" {
  autoscaling_group_name = var.target_group_attach_autoscale_name
  lb_target_group_arn    = var.target_group_attach_alb_target_group_arn
}