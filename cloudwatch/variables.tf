variable "name_prefix" {
  description = "Prefix for the launch template name."
  type        = string
}

variable "instance_ami" {
  description = "AMI for the EC2 instances."
  type        = string
}

variable "instance_type" {
  description = "Type of the EC2 instances."
  type        = string
}

variable "key_name" {
  description = "Key name for the EC2 instances."
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the EC2 instances."
  type        = string
}

variable "instance_profile" {
  description = "IAM instance profile for the EC2 instances."
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instances."
  type        = string
}

variable "desired_capacity" {
  description = "Desired capacity of the Auto Scaling group."
  type        = number
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling group."
  type        = number
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling group."
  type        = number
}

variable "subnet_ids" {
  description = "Subnets for the Auto Scaling group."
  type        = list(string)
}

variable "target_group_arns" {
  description = "Target group ARNs for the Auto Scaling group."
  type        = list(string)
}

variable "evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold."
  type        = number
  default     = 1
}

variable "period" {
  description = "The period, in seconds, over which the specified statistic is applied."
  type        = number
  default     = 300
}

variable "high_cpu_threshold" {
  description = "The value against which the specified statistic is compared."
  type        = number
  default     = 80
}

variable "low_cpu_threshold" {
  description = "The value against which the specified statistic is compared."
  type        = number
  default     = 20
}
