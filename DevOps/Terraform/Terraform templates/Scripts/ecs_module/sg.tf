module "alb_module" {
  source = "../alb_module"
  application_name = var.application_name
  environment = var.environment
  vpc_id = var.vpc_id
  public_subnets = var.public_subnets
  container_port = 80
  lb_sg_config = {
    name = "lbsg_rules"
    rules = [{
    type       = "ingress"
    from_port  = 80
    to_port    = 80
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    },
    {
        type       = "ingress"
        from_port  = 443
        to_port    = 443
        protocol   = "tcp"
        cidr_block = "0.0.0.0/0"
    },
    {
        type       = "egress"
        from_port  = 0
        to_port    = 0
        protocol   = "-1"
        cidr_block = "0.0.0.0/0"
    }
    ]
    }
#   certificate_arn = var.certificate_arn
}

# service security group with ingress  rules
resource "aws_security_group" "service_sg" {
  name_prefix = "${var.environment}-${var.application_name}-"
  vpc_id = data.aws_vpc.ecs_vpc.id
  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [module.alb_module.lbsg_id]
  }
}
# service security group egress rules
resource "aws_vpc_security_group_egress_rule" "servicesg_egress" {
  security_group_id = aws_security_group.service_sg.id
  from_port         = var.service_sg_egress.rules.from_port
  to_port           = var.service_sg_egress.rules.to_port
  ip_protocol       = var.service_sg_egress.rules.ip_protocol
  cidr_ipv4         = var.service_sg_egress.rules.cidr_ipv4
}













