
resource "aws_lb" "internal_nlb" {
  name               = "lzb-nlb-project"
  internal           = true
  load_balancer_type = "network"
  security_groups    = [aws_security_group.private-sg-ec2.id]
  subnets            = module.vpc2.private_subnets[*]
}

resource "aws_lb_target_group" "nlb_tg" {
  name     = "lzb-nlb-targets"
  port     = 80
  protocol = "HTTP"
  vpc_id   = module.vpc2.vpc_id
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.internal_nlb.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.nlb_tg.arn
  }
}

resource "aws_lb_target_group_attachment" "web_attachment-1" {
  count            = 1
  target_group_arn = aws_lb_target_group.nlb_tg.arn
  target_id        = aws_instance.ec2-private-1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "web_attachment-2" {
  count            = 1
  target_group_arn = aws_lb_target_group.nlb_tg.arn
  target_id        = aws_instance.ec2-private-2.id
  port             = 80
}
