resource "aws_subnet" "public1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr1
  availability_zone       = var.availability_zone1
  map_public_ip_on_launch = true
  tags                    = merge({ Name = var.subnet_name1 }, var.environment_tags)
}

resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnet_cidr2
  availability_zone       = var.availability_zone2
  map_public_ip_on_launch = true
  tags                    = merge({ Name = var.subnet_name2 }, var.environment_tags)
}
