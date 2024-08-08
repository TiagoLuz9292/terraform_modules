variable "name_prefix" {
  description = "Prefix for resource names."
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ALB."
  type        = list(string)
}


variable "certificate_arn" {
  description = "ARN of the SSL certificate."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to apply to the resources."
  type        = map(string)
}

variable "vpc_id" {
  description = "vpc_id"
  type        = string
}


variable "s3_bucket_name" {
  description = "S3 bucket name for ALB access logs."
  type        = string
  default     = ""
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID for the instance"
  type        = string
}