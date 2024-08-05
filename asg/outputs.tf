output "launch_template_id" {
  description = "The ID of the launch template"
  value       = aws_launch_template.instance.id
}

output "autoscaling_group_name" {
  description = "The name of the Auto Scaling group"
  value       = aws_autoscaling_group.asg.name
}

output "scale_out_policy_arn" {
  description = "The ARN of the scale-out policy"
  value       = aws_autoscaling_policy.scale_out_policy.arn
}

output "scale_in_policy_arn" {
  description = "The ARN of the scale-in policy"
  value       = aws_autoscaling_policy.scale_in_policy.arn
}
