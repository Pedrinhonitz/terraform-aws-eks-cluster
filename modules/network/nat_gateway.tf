resource "aws_nat_gateway" "eks_nat_gateway_1a" {
  allocation_id = aws_eip.eks_elastic_ip_1a.id
  subnet_id     = aws_subnet.eks_subnet_public_1a.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_nat_gateway_1a"
    }
  )
}

resource "aws_nat_gateway" "eks_nat_gateway_1b" {
  allocation_id = aws_eip.eks_elastic_ip_1b.id
  subnet_id     = aws_subnet.eks_subnet_public_1b.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_nat_gateway_1b"
    }
  )
}

resource "aws_route_table" "eks_route_table_private_1a" {
  vpc_id = aws_vpc.eks_vpc.id

  route = {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_nat_gateway_1a.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_route_table_private_1a"
    }
  )

}

resource "aws_route_table" "eks_route_table_private_1b" {
  vpc_id = aws_vpc.eks_vpc.id

  route = {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_nat_gateway_1b.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_route_table_private_1b"
    }
  )

}