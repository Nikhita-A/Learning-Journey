output "target_group_arn" {
  value = aws_lb_target_group.tg.arn
}
output "lb_endpoint" {
  description = "load balancer endpoint url"
  value = aws_lb.lb.dns_name
}

output "lbsg_id" {
  value = aws_security_group.lbsg.id
}










