resource "aws_autoscaling_policy" "scale_out_policy_blue" {
  count = var.deployment_strategy == "blue-green" && var.active_asg == "blue" ? 1 : 0
  name                   = "scale-out-blue"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 60
  autoscaling_group_name = aws_autoscaling_group.asg_blue[0].name
}

resource "aws_autoscaling_policy" "scale_out_policy_green" {
  count = var.deployment_strategy == "blue-green" && var.active_asg == "green" ? 1 : 0
  name                   = "scale-out-green"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 60
  autoscaling_group_name = aws_autoscaling_group.asg_green[0].name
}

resource "aws_autoscaling_policy" "scale_in_policy_blue" {
  count = var.deployment_strategy == "blue-green" && var.active_asg == "blue" ? 1 : 0
  name                   = "scale-in-blue"
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 60
  autoscaling_group_name = aws_autoscaling_group.asg_blue[0].name
}

resource "aws_autoscaling_policy" "scale_in_policy_green" {
  count = var.deployment_strategy == "blue-green" && var.active_asg == "green" ? 1 : 0
  name                   = "scale-in-green"
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 60
  autoscaling_group_name = aws_autoscaling_group.asg_green[0].name
}

