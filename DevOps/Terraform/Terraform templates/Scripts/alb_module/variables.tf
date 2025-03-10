variable "vpc_id" {
  type        = string
  description = "This is the existing vpc id"
}

variable "application_name"{
  type = string
  description = "name of the applcication"
}
variable "environment" {
  type = string
  description = "Is it Qa, Stage or Prod?"
}
variable "public_subnets" {
  type        = list(string)
  description = "Public subnets in the existing vpc"
}
variable "container_port" {
  type        = number
  description = "port number of the container"
}
variable "lb_sg_config" {
  type = object({
    name = string
    rules = list(object({
      type       = string
      from_port  = number
      to_port    = number
      protocol   = string
      cidr_block = string
    }))
  })
  description = "These are load balancer security group rules"
}
# variable "certificate_arn" {
#     type = string
#     description = "certificate arn"
# }










