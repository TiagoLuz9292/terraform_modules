resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = var.vpc_id
  peer_vpc_id   = var.peer_vpc_id
  auto_accept   = true
  tags = merge(
    {
      Name = var.peer_name
    },
    var.environment_tags
  )
}