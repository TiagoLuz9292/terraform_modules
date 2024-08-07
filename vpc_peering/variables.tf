variable "vpc_id" {}
variable "peer_vpc_id" {}
variable "peer_vpc_cidr" {}
variable "vpc_cidr" {}
variable "route_table_id" {}
variable "admin_route_table_id" {}
variable "peer_name" {}
variable "environment_tags" {}

variable "aws_region" {
  description = "AWS region"
  type        = string
}