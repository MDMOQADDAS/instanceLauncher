resource "aws_route_table_association" "a" {
    count=length(var.subnet_cidr)
  subnet_id      = element(aws_subnet.main.*.id ,count.index)
  route_table_id = aws_route_table.example.id
}