# Fetches the existing vpc details
data "aws_vpc" "ecs_vpc" {
  id = var.vpc_id
}
# Fetches the existing task execution role
data "aws_iam_role" "taskRole" {
  name = "ecsTaskExecutionRole"
}
data "aws_iam_role" "executionRole" {
  name = "ecsTaskExecutionRole"
}










