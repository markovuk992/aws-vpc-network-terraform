resource "aws_subnet" "eks_public_subnet" {
  count                   = length(var.public_subnets)
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = var.public_subnets[count.index]
  map_public_ip_on_launch = true
  availability_zone       = var.public_az[count.index]

  tags = {
    "Name" = "${var.environment}-public-zone-${var.public_az[count.index]}"
  }
}

resource "aws_subnet" "eks_private_subnet" {
  count             = length(var.private_subnets)
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = var.private_subnets[count.index]
  availability_zone = var.private_az[count.index]

  tags = {
    "Name" = "${var.environment}-private-zone-${var.private_az[count.index]}"
  }
}