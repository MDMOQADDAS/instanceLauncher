resource "aws_subnet" "main" {
    count=length(var.subnet_cidr)
  
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.subnet_cidr , count.index)
  availability_zone = element(var.azs , count.index)
  map_public_ip_on_launch=true
  tags = {
    Name = "Subnet-${count.index + 1}"
  }
}