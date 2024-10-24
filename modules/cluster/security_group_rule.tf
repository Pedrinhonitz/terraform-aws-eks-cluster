resource "aws_security_group_rule" "eks_cluster_security_group_rule" {
  type      = "ingress"
  from_port = 443
  to_port   = 443
  protocol  = "tcp"
  cidr_blocks = [
    "0.0.0.0/0" # Aberto para todas as conexoes
  ]
  security_group_id = aws_eks_cluster.eks_cluster.vpc_config[0].cluster_security_group_id

}