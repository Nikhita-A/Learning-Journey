vpc_cidr          = "10.0.0.0/16"
subnet_names      = ["public-subnet", "private-subnet"]
subnet_azs        = ["us-west-2a", "us-west-2b"]
public_key_path   = "~/.ssh/id_rsa.pub"
ec2_ami           = "ami-0efcece6bed30fd98"
ec2_instance_type = "t2.micro"
eks_sg_config = {
  name        = "eks-sg"
  description = "This is eks security group"
  rules = [{
    type       = "ingress"
    from_port  = 22
    to_port    = 22
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    },
    {
      type       = "egress"
      from_port  = 0
      to_port    = 65535
      protocol   = "-1"
      cidr_block = "0.0.0.0/0"
    }
  ]
}