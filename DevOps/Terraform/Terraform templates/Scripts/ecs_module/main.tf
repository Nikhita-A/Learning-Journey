# module "alb_module" {
#   source = "../alb_module"
# }

# create an ECS cluster
resource "aws_ecs_cluster" "ecs_cluster" {
  name = "${var.environment}-${var.application_name}"
}
# create a task definition
resource "aws_ecs_task_definition" "task" {
  family             = "${var.application_name}-task"
  network_mode       = "awsvpc"
  task_role_arn      = data.aws_iam_role.taskRole.arn
  execution_role_arn = data.aws_iam_role.executionRole.arn
  cpu                = var.cpu
  memory             = var.memory
  container_definitions = jsonencode([
    {
      name      = var.container_name
      image     = var.container_image
      essential = true
      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = var.host_port
        }
      ]
    }
  ])
  runtime_platform {
    operating_system_family = "LINUX"
    cpu_architecture        = "X86_64"
  }
  requires_compatibilities = ["FARGATE"]
}
# create a service
resource "aws_ecs_service" "service" {
  name                = "${var.application_name}-service"
  cluster             = aws_ecs_cluster.ecs_cluster.id
  task_definition     = aws_ecs_task_definition.task.arn
  desired_count       = 1
  launch_type         = "FARGATE"
  scheduling_strategy = "REPLICA"
  # attach load balancer to the service
  load_balancer {
    target_group_arn = module.alb_module.target_group_arn
    container_name   = var.container_name
    container_port   = var.container_port
  }
  network_configuration {
    subnets          = var.private_subnets
    security_groups  = [aws_security_group.service_sg.id]
    assign_public_ip = false
  }
}










