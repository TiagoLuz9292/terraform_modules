variable "name_prefix" {
  description = "The name prefix for the launch template"
  type        = string
}

variable "instance_ami" {
  description = "The AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID for the instance"
  type        = string
}

variable "instance_profile" {
  description = "The instance profile for the instance"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "desired_capacity" {
  description = "The desired capacity for the ASG"
  type        = number
}

variable "max_size" {
  description = "The maximum size for the ASG"
  type        = number
}

variable "min_size" {
  description = "The minimum size for the ASG"
  type        = number
}

variable "subnet_ids" {
  description = "The subnet IDs for the ASG"
  type        = list(string)
}

variable "target_group_arns" {
  description = "The target group ARNs for the ASG"
  type        = list(string)
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resources."
  type        = map(string)
}

variable "asg_name" {
  description = "asg name"
  type        = string
}

variable "deployment_strategy" {
  description = "Determines the deployment strategy: single (one ASG) or blue-green (two ASGs)"
  type        = string
  default     = "single"
}

variable "environment" {
  description = "The environment to deploy: dev, stg, or prod"
  type        = string
}

variable "active_asg" {
  description = "The active ASG (currently serving traffic)"
  default     = "blue"
}

variable "passive_asg" {
  description = "The passive ASG (not serving traffic)"
  default     = "green"
}