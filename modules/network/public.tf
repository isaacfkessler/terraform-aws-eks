resource "aws_subnet" "eks_subnet_public_1a" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true


  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-public-subnet-1a",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "eks_subnet_public_1b" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-public-subnet-1b",
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_route_table_association" "rta_public-a" {
  subnet_id      = aws_subnet.eks_subnet_public_1a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "rta_public-b" {
  subnet_id      = aws_subnet.eks_subnet_public_1b.id
  route_table_id = aws_route_table.public_route_table.id
}
