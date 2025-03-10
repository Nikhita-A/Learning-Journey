vpc_id           = "vpc-04d48a367d1c49a5d"
public_subnets   = ["subnet-074dceb4b8356b140", "subnet-07fa9cafcd8fe6fb6"]
private_subnets  = ["subnet-00b0140eb40e0df10", "subnet-0ab4dcef6c79fc42a"]
environment      = "qa"
application_name = "admin"
container_name   = "admin"
container_image  = "nginx"
container_port   = 80
host_port        = 80
cpu              = 256
memory           = 512
service_sg_egress = {
  name = "servicesg_egress_rules"
  rules = {
    from_port   = -1
    to_port     = -1
    ip_protocol = "-1"
    cidr_ipv4   = "0.0.0.0/0"
  }
}
# certificate_arn = "arn:aws:acm:ap-south-1:297493477036:certificate/38df69ff-3ca2-4277-b465-1ba400cfa4a4"










