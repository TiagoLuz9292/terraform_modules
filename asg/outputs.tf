output "autoscaling_group_names" {
  value = var.deployment_strategy == "blue-green" ? [aws_autoscaling_group.asg_blue[0].name, aws_autoscaling_group.asg_green[0].name] : [aws_autoscaling_group.asg_green[0].name]
}
