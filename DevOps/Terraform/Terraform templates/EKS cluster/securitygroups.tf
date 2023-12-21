resource "aws_security_group" "eks-sg" {
  name        = var.eks_sg_config.name
  description = var.eks_sg_config.description
  vpc_id      = aws_vpc.eks-vpc.id
  depends_on  = [aws_vpc.eks-vpc]
}

resource "aws_security_group_rule" "eks-sg-rules" {
  count             = length(var.eks_sg_config.rules)
  type              = var.eks_sg_config.rules[count.index].type
  from_port         = var.eks_sg_config.rules[count.index].from_port
  to_port           = var.eks_sg_config.rules[count.index].to_port
  protocol          = var.eks_sg_config.rules[count.index].protocol
  cidr_blocks       = [var.eks_sg_config.rules[count.index].cidr_block]
  security_group_id = aws_security_group.eks-sg.id
  depends_on = [
    aws_security_group.eks-sg
  ]
}