resource "aws_route" "vpc1_to_vpc2" {
  provider                  = aws.us-east-1
  route_table_id            = aws_route_table.vpc1_rt.id
  destination_cidr_block    = "10.1.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}

resource "aws_route" "vpc2_to_vpc1" {
  provider                  = aws.eu-west-1
  route_table_id            = aws_route_table.vpc2_rt.id
  destination_cidr_block    = "10.0.0.0/16"
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
}
