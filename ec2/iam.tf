resource "aws_iam_policy" "instance_policy" {
  name        = "worker_policy"
  description = "Policy for worker nodes to access SSM and EC2 describe instances"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "ec2:Describe*",
          "elasticloadbalancing:*",
          "iam:ListRoles",
          "iam:PassRole",
          "cloudwatch:*",
          "logs:*",
          "autoscaling:Describe*"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role" "instance_role" {
  name               = "worker-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "instance_policy_attachment" {
  role       = aws_iam_role.worker_role.name
  policy_arn = aws_iam_policy.worker_policy.arn
}

resource "aws_iam_instance_profile" "instance_profile" {
  name = "worker-instance-profile"
  role = aws_iam_role.worker_role.name
}