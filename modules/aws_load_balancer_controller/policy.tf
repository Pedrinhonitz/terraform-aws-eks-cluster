resource "aws_iam_policy" "eks_controller_policy" {
  name = "${var.project_name}_aws_load_balancer_controller"

  policy = file("${path.modeule}/iam_policy.json")

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}_eks_controller_policy"
    }
  )
}