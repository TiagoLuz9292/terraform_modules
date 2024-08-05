variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet in which to launch the instance"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group to assign to the instance"
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance"
  type        = bool
  default     = false
}

variable "iam_instance_profile" {
  description = "The IAM instance profile to associate with the instance"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the instance"
  type        = map(string)
}

variable "provision_command" {
  description = "Command to provision the instance"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the resources are created"
  type        = string
}
