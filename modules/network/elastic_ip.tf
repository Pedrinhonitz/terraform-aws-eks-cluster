resource "aws_eip" "eks_elastic_ip_1a" {
  vpc = true

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_elastic_ip_1a"
    }
  )
}

resource "aws_eip" "eks_elastic_ip_1b" {
  vpc = true

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_elastic_ip_1b"
    }
  )
}