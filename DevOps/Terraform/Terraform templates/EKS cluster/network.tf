# Create a vpc

resource "aws_vpc" "eks-vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "eks-vpc"
  }
}


# Create two subnets (public and private)

resource "aws_subnet" "eks-subnets" {
  count             = length(var.subnet_names)
  vpc_id            = aws_vpc.eks-vpc.id
  cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)
  map_public_ip_on_launch = true
  availability_zone = var.subnet_azs[count.index]
  tags = {
    Name = var.subnet_names[count.index]
  }
  depends_on = [aws_vpc.eks-vpc]
}


# Create internet gateway

resource "aws_internet_gateway" "eks-igw" {
  vpc_id = aws_vpc.eks-vpc.id
  tags = {
    Name = "eks-igw"
  }
  depends_on = [aws_vpc.eks-vpc]
}



