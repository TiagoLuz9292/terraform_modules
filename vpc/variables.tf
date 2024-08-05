variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr1" {
  description = "The CIDR block for the first subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_cidr2" {
  description = "The CIDR block for the second subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone1" {
  description = "The availability zone for the first subnet"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone2" {
  description = "The availability zone for the second subnet"
  type        = string
  default     = "us-east-1b"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "main-vpc"
}

variable "subnet_name1" {
  description = "The name of the first subnet"
  type        = string
  default     = "public-subnet-1"
}

variable "subnet_name2" {
  description = "The name of the second subnet"
  type        = string
  default     = "public-subnet-2"
}

variable "igw_name" {
  description = "The name of the internet gateway"
  type        = string
  default     = "main-igw"
}

variable "route_table_name" {
  description = "The name of the route table"
  type        = string
  default     = "main-route-table"
}

variable "environment_tags" {
  description = "Environment tags"
  type        = map(string)
  default     = {
    Environment = "dev"
  }
}
