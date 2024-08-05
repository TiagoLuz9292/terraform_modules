resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags   = merge({ Name = var.igw_name }, var.environment_tags)
}
