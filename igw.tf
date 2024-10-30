resource "aws_internet_gateway" "emir_igw" {
  vpc_id = aws_vpc.emirvpc.id
  tags = {
    Name = "emir_internet_gateway"
    Owner = "emir"
  }
}

resource "aws_route_table" "emir_public_route_table" {
  vpc_id = aws_vpc.emirvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.emir_igw.id
  }

  tags = {
    Name = "emir_public_route_table"
    Owner = "emir"
  }
}

resource "aws_route_table_association" "emir_public_route_table_assoc" {
  subnet_id      = aws_subnet.emir_public_subnet1_eu_central_1a.id
  route_table_id = aws_route_table.emir_public_route_table.id
}
