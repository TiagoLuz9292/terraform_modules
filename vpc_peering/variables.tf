variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "peer_vpc_id" {
  description = "The ID of the peer VPC"
}

variable "peer_vpc_cidr" {
  description = "The CIDR block of the peer VPC"
}

variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
}

variable "route_table_id" {
  description = "The ID of the route table"
}

variable "admin_route_table_id" {
  description = "The ID of the admin route table"
}

variable "peer_name" {
  description = "The name of the VPC peering connection"
}

variable "environment_tags" {
  description = "Environment tags"
  type        = map(string)
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}