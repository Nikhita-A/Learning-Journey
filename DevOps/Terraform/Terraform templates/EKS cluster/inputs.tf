variable "vpc_cidr" {
  type        = string
  description = "This is vpc cidr"
}

variable "subnet_names" {
  type        = list(string)
  description = "These are subnet names"
}

variable "subnet_azs" {
  type        = list(string)
  description = "These are availability zones for subnets"
}

variable "public_key_path" {
  type        = string
  description = "This is the aws public key path"
}

variable "ec2_ami" {
  type        = string
  description = "This is the ami of ec2 instance"
}

variable "ec2_instance_type" {
  type        = string
  description = "This is the instance type of ec2 machine"
}

variable "eks_sg_config" {
  type = object({
    name        = string
    description = string
    rules = list(object({
      type       = string
      from_port  = number
      to_port    = number
      protocol   = string
      cidr_block = string
    }))
  })
  description = "This is eks security group config rules"
}

