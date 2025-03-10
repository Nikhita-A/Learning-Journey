terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.90.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


# module "s3_backend_module" {
#   source = "../Modules/s3_backend_module"
#   key = "ap-south-1/prod-communications/terraform.tfstate"
# }
module "ecs_module" {
  source            = "../ecs_module"
  vpc_id            = var.vpc_id
  environment       = var.environment
  application_name  = var.application_name
  public_subnets    = var.public_subnets
  private_subnets   = var.private_subnets
  container_name    = var.container_name
  container_image   = var.container_image
  container_port    = var.container_port
  host_port         = var.host_port
  cpu               = var.cpu
  memory            = var.memory
  service_sg_egress = var.service_sg_egress
}

module "alb_module" {
  source           = "../alb_module"
  application_name = var.application_name
  environment      = var.environment
  vpc_id           = var.vpc_id
  public_subnets   = var.public_subnets
  container_port   = 80
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