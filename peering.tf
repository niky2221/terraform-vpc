resource "aws_vpc_peering_connection" "main" {
  
  peer_vpc_id   = local.default_vpc
  vpc_id        = aws_vpc.main.id
  auto_accept   = true

  tags = {
    Name = "VPC Peering between main and default"
  }
}
