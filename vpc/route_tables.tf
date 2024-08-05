resource "aws_route_table" "routetable" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = merge({ Name = var.route_table_name }, var.environment_tags)
}

resource "aws_route_table_association" "public_association1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.routetable.id
}

resource "aws_route_table_association" "public_association2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.routetable.id
}
