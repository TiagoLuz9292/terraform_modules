output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.instance.id
}

output "instance_public_ip" {
  description = "The public IP address of the instance"
  value       = aws_instance.instance.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the instance"
  value       = aws_instance.instance.private_ip
}

output "eip" {
  description = "The Elastic IP address"
  value       = aws_eip.eip.public_ip
}

output "iam_role_arn" {
  description = "The ARN of the IAM role"
  value       = aws_iam_role.instance_role.arn
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.instance_sg.id
}
