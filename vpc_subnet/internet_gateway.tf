resource "aws_internet_gateway" "ourgw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "MYgateway"
  }
}