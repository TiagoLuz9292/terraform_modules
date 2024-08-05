resource "aws_iam_role" "autoscaling_role" {
  name = "autoscaling_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "autoscaling.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "autoscaling_policy" {
  name   = "autoscaling_policy"
  role   = aws_iam_role.autoscaling_role.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = [
          "autoscaling:DescribeAutoScalingGroups",
          "autoscaling:UpdateAutoScalingGroup",
          "cloudwatch:PutMetricAlarm",
          "cloudwatch:DescribeAlarms",
          "ec2:DescribeInstances"
        ],
        Resource = "*"
      }
    ]
  })
}
