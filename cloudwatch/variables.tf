variable "asg_name" {
  description = "The name of the Auto Scaling Group"
  type        = string
}

variable "scale_out_policy_arn" {
  description = "The ARN of the scale out policy"
  type        = string
}

variable "scale_in_policy_arn" {
  description = "The ARN of the scale in policy"
  type        = string
}

variable "high_cpu_threshold" {
  description = "The threshold for high CPU usage"
  type        = number
  default     = 70
}

variable "low_cpu_threshold" {
  description = "The threshold for low CPU usage"
  type        = number
  default     = 20
}

variable "evaluation_periods" {
  description = "The number of periods over which data is evaluated"
  type        = number
  default     = 2
}

variable "period" {
  description = "The period in seconds over which the specified statistic is applied"
  type        = number
  default     = 120
}

variable "environment_tags" {
  description = "Environment tags"
  type        = map(string)
}
