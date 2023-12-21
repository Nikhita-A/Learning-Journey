# Create an IAM role for the eks cluster

resource "aws_iam_role" "eks_cluster_role" {
  name = "eks_cluster_role"
  assume_role_policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Principal" : {
            "Service" : [
              "eks.amazonaws.com"
            ]
          },
          "Action" : "sts:AssumeRole"
        }
      ]
  })
}


# Attach policies to the role associated with eks cluster

resource "aws_iam_role_policy_attachment" "AmazonEKSClusterPolicy" {
  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_role_policy_attachment" "AmazonEKSVPCResourceController" {
  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
}


# Create an IAM role for eks node group

resource "aws_iam_role" "eks_node_group_role" {
  name = "eks_node_group_role"
  assume_role_policy = jsonencode(
    {
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Action" : [
            "sts:AssumeRole"
          ],
          "Effect" : "Allow",
          "Principal" : {
            "Service" : [
              "ec2.amazonaws.com"
            ]
          }
        }
      ]
  })
}


# Attach policies to the role associated with eks node group

resource "aws_iam_role_policy_attachment" "AmazonEKSWorkerNodePolicy" {
  role       = aws_iam_role.eks_node_group_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "AmazonEKS_CNI_Policy" {
  role       = aws_iam_role.eks_node_group_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

resource "aws_iam_role_policy_attachment" "AmazonEC2ContainerRegistryReadOnly" {
  role       = aws_iam_role.eks_node_group_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}