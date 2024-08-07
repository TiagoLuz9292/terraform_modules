output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet1_id" {
  description = "The ID of the first subnet"
  value       = aws_subnet.public1.id
}

output "subnet2_id" {
  description = "The ID of the second subnet"
  value       = aws_subnet.public2.id
}

output "igw_id" {
  description = "The ID of the internet gateway"
  value       = aws_internet_gateway.igw.id
}

output "route_table_id" {
  description = "The ID of the route table"
  value       = aws_route_table.routetable.id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}