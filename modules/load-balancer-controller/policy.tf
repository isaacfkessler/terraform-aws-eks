resource "aws_iam_policy" "policy" {
  name = "${var.project_name}-policy-lb-controller"
  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = file("${path.module}/iam_policy.json")
  tags   = var.tags
}