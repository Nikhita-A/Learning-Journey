variable "vpc_id" {
  type        = string
  description = "This is the existing vpc id"
}
variable "public_subnets" {
  type        = list(string)
  description = "Public subnets in the existing vpc"
}
variable "private_subnets" {
  type        = list(string)
  description = "Private subnets in the existing vpc"
}
variable "application_name"{
  type = string
  description = "name of the applcication"
}
variable "environment" {
  type = string
  description = "Is it Qa, Stage or Prod?"
}
variable "container_name" {
  type        = string
  description = "Name of the container"
}
variable "container_image" {
  type        = string
  description = "Image uri of the container"
}
variable "container_port" {
  type        = number
  description = "port number of the container"
}
variable "host_port" {
  type        = number
  description = "port number of the host"
}
variable "cpu" {
  type        = number
  description = "number of cpu units used by the task"
}
variable "memory" {
  type        = number
  description = "amount of memory used by the task"
}
# variable "lb_sg_config" {
#   type = object({
#     name = string
#     rules = list(object({
#       type       = string
#       from_port  = number
#       to_port    = number
#       protocol   = string
#       cidr_block = string
#     }))
#   })
#   description = "These are load balancer security group rules"
# }
variable "service_sg_egress" {
  type = object({
    name = string
    rules = object({
      from_port   = number
      to_port     = number
      ip_protocol = string
      cidr_ipv4   = string
    })
  })
}