
resource "aws_internet_gateway" "main" {
  vpc_id = var.internet_gateway_vpc_id

  tags = {
    Name = "InternetGateway"
  }
}



