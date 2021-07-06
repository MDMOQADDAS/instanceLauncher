resource "aws_route_table" "example" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ourgw.id
  }

  tags = {
    Name = "Public Routing Table"
  }
}