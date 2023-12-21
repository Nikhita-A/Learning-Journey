# Create eks cluster

resource "aws_eks_cluster" "kubernetes_cluster" {
  name     = "kubernetes_cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn
  vpc_config {
    subnet_ids = [aws_subnet.eks-subnets[0].id, aws_subnet.eks-subnets[1].id]
  }
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.AmazonEKSVPCResourceController
  ]
}





