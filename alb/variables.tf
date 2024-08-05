variable "name_prefix" {
  description = "Prefix for resource names."
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ALB."
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for the ALB."
  type        = string
}

variable "certificate_arn" {
  description = "ARN of the SSL certificate."
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resources."
  type        = map(string)
}

variable "s3_bucket_name" {
  description = "S3 bucket name for ALB access logs."
  type        = string
  default     = ""
}
