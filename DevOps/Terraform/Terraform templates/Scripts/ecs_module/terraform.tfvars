# vpc_id                 = "vpc-04d48a367d1c49a5d"
# public_subnets         = ["subnet-074dceb4b8356b140", "subnet-07fa9cafcd8fe6fb6"]
# private_subnets        = ["subnet-00b0140eb40e0df10", "subnet-0ab4dcef6c79fc42a"]
# ecs_cluster_name       = "my_ecs_cluster"
# task_definition_family = "task-1"
# container_name         = "container-1"
# container_image        = "nginx"
# container_port         = 80
# host_port              = 80
# cpu                    = 256
# memory                 = 512
# service_name           = "spc-service"
# load_balancer_name     = "spc-lb"
# load_balancer_type     = "application"
# target_group_name      = "spc-tg"
# lb_sg_config = {
#   name = "lbsg_rules"
#   rules = [{
#     type       = "ingress"
#     from_port  = 80
#     to_port    = 80
#     protocol   = "tcp"
#     cidr_block = "0.0.0.0/0"
#     },
#     {
#       type       = "ingress"
#       from_port  = 443
#       to_port    = 443
#       protocol   = "tcp"
#       cidr_block = "0.0.0.0/0"
#     },
#     {
#       type       = "egress"
#       from_port  = 0
#       to_port    = 0
#       protocol   = "-1"
#       cidr_block = "0.0.0.0/0"
#     }
#   ]
# }
# service_sg_config = {
#   name = "servicesg_rules"
#   rules = [ {
#     type = "ingress"
#     from_port = 80
#     to_port = 80
#     protocol = "tcp"
#   },
#   {
#     type = "egress"
#     from_port = 0
#     to_port = 0
#     protocol = "-1"
#     cidr_block = "0.0.0.0/0"
#   }
#   ]
# }
# service_sg_egress = {
#   name = "servicesg_egress_rules"
#   rules = {
#     from_port   = 0
#     to_port     = 0
#     ip_protocol = "-1"
#     cidr_ipv4   = "0.0.0.0/0"
#   }
# }