resource "aws_vpc" "vpc1" {
  provider             = aws.us-east-1
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-1-us-east-1"
  }
}

resource "aws_vpc" "vpc2" {
  provider             = aws.eu-east-1
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc-2-eu-west-1"
  }
}
