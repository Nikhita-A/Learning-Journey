# Fetches the existing vpc details
data "aws_vpc" "ecs_vpc" {
  id = var.vpc_id
}