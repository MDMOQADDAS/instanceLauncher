resource "aws_instance" "os1" {
  ami           = var.ami-id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main.id
  key = var.key

  tags = {
    Name = "My AMI Linux"
  }
}