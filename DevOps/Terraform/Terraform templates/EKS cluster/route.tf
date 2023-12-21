resource "aws_route_table" "eks-public-rt" {
  vpc_id = aws_vpc.eks-vpc.id
  tags = {
    Name = "eks-public-rt"
  }
  depends_on = [aws_vpc.eks-vpc]
}

# data "aws_route_table" "eks-private-rt" {
#   vpc_id = aws_vpc.eks-vpc.id
#   tags = {
#     Name = "eks-private-rt"
#   }
#   depends_on = [ aws_vpc.eks-vpc ]
# }

resource "aws_route_table_association" "publicsubnet_publicrt" {
  subnet_id      = aws_subnet.eks-subnets[0].id
  route_table_id = aws_route_table.eks-public-rt.id
}

# resource "aws_route_table_association" "privatesubnet_privatert" {
#   subnet_id = var.subnet_names[1].id
#   route_table_id = aws_route_table.eks-private-rt.id
# }

resource "aws_route" "public-route" {
  route_table_id         = aws_route_table.eks-public-rt.id
  gateway_id             = aws_internet_gateway.eks-igw.id
  destination_cidr_block = "0.0.0.0/0"
  depends_on = [
    aws_vpc.eks-vpc,
    aws_internet_gateway.eks-igw
  ]
}