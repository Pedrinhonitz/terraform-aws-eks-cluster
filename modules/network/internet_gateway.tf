resource "aws_internet_gateway" "eks_internet_gateway" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_internet_gateway"
    }
  )
}

resource "aws_route_table" "eks_route_table_public" {
  vpc_id = aws_vpc.eks_vpc.id

  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_internet_gateway.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_route_table_public"
    }
  )

}