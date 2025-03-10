# load balancer security group
resource "aws_security_group" "lbsg" {
  name_prefix = "lb-${var.environment}-${var.application_name}-"
  vpc_id = data.aws_vpc.ecs_vpc.id
}
# load balancer security group rules
resource "aws_security_group_rule" "lbsg_rules" {
  count             = length(var.lb_sg_config.rules)
  type              = var.lb_sg_config.rules[count.index].type
  from_port         = var.lb_sg_config.rules[count.index].from_port
  to_port           = var.lb_sg_config.rules[count.index].to_port
  protocol          = var.lb_sg_config.rules[count.index].protocol
  cidr_blocks       = [var.lb_sg_config.rules[count.index].cidr_block]
  security_group_id = aws_security_group.lbsg.id
  depends_on        = [aws_security_group.lbsg]
}










