resource "aws_eks_node_group" "eks_managed_node_group" {
  cluster_name    = var.cluster_name
  node_group_name = "${var.project_name}_node_group"
  node_role_arn   = aws_iam_role.eks_managed_node_group_role.arn

  capacity_type  = "SPOT" 
  instance_types = ["t3.micro"] 

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_managed_node_group"
    }
  )

  subnet_ids = [
    var.subnet_private_1a,
    var.subnet_private_1b
  ]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_managed_node_group_role_attachment_worker,
    aws_iam_role_policy_attachment.eks_managed_node_group_role_attachment_ecr,
    aws_iam_role_policy_attachment.eks_managed_node_group_role_attachment_cni
  ]
}