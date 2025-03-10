# create a load balancer
resource "aws_lb" "lb" {
  name               = "new-lb-name"
  internal           = false
  load_balancer_type = "application"
  subnets            = var.public_subnets
  security_groups    = [aws_security_group.lbsg.id]
}
# create a target group
resource "aws_lb_target_group" "tg" {
  name        = "${var.environment}-${var.application_name}-tg"
  port        = var.container_port
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = data.aws_vpc.ecs_vpc.id
}
# Create Load Balancer Listener
resource "aws_lb_listener" "lb_listener_1" {
  load_balancer_arn = aws_lb.lb.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    target_group_arn = aws_lb_target_group.tg.arn
    type             = "forward"
  }
}
# resource "aws_lb_listener" "lb_listener_2" {
#   load_balancer_arn = aws_lb.lb.arn
#   port              = 443
#   protocol          = "HTTPS"
#   certificate_arn   = var.certificate_arn
#   default_action {
#     target_group_arn = aws_lb_target_group.tg.arn
#     type             = "forward"
#   }
# }