# Import aws key pair

resource "aws_key_pair" "awskey" {
  key_name   = "awskey"
  public_key = file(var.public_key_path)
}


# Create kubernetes server

resource "aws_instance" "eks-instance" {
  ami                         = var.ec2_ami
  instance_type               = var.ec2_instance_type
  key_name                    = aws_key_pair.awskey.key_name
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.eks-subnets[0].id
  vpc_security_group_ids      = [aws_security_group.eks-sg.id]
  tags = {
    Name = "eks-ec2-instance"
  }
  depends_on = [aws_subnet.eks-subnets]
}


# Create eks node group

resource "aws_eks_node_group" "kubernetes_node_group" {
  cluster_name    = aws_eks_cluster.kubernetes_cluster.name
  node_group_name = "kubernetes_node_group"
  version         = aws_eks_cluster.kubernetes_cluster.version
  node_role_arn   = aws_iam_role.eks_node_group_role.arn
  subnet_ids      = [aws_subnet.eks-subnets[0].id, aws_subnet.eks-subnets[1].id]
  capacity_type   = "ON_DEMAND"
  disk_size       = "20"
  instance_types  = ["t2.micro"]
  remote_access {
    ec2_ssh_key               = aws_key_pair.awskey.key_name
    source_security_group_ids = [aws_security_group.eks-sg.id]
  }
  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
  update_config {
    max_unavailable = 1
  }
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly
  ]

}