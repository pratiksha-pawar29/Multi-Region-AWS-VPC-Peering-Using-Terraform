resource "aws_vpc_peering_connection" "peer" {
  provider      = aws.us-east-1
  vpc_id        = aws_vpc.vpc1.id
  peer_vpc_id   = aws_vpc.vpc2.id
  peer_region   = "eu-west-1"
  auto_accept   = true

  tags = {
    Name = "vpc-peering-us-east-1-eu-west-1"
  }
}
