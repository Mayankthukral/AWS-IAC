
resource "aws_route_table" "public" {
  vpc_id = var.route_table_vpc_id

  dynamic "route" {
    for_each = var.route_table_public_internet_gateway_ids  # Assuming this is a list of NAT gateway IDs
    content {
      cidr_block     = "0.0.0.0/0"
      gateway_id = route.value
    }
  }

  tags = {
    Name = var.route_table_public_name
  }
}

resource "aws_route_table_association" "public" {
  count          = length(var.route_table_public_subnet_ids)
  subnet_id      = var.route_table_public_subnet_ids[count.index]
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  count   = length(var.route_table_private_nat_gateway_ids)
  vpc_id  = var.route_table_vpc_id

  dynamic "route" {
    for_each = [var.route_table_private_nat_gateway_ids[count.index]]  # Assuming var.route_table_private_nat_gateway_ids is a tuple of NAT gateway IDs
    content {
      cidr_block     = "0.0.0.0/0"
      nat_gateway_id = route.value
    }
  }

  tags = {
    Name = "${var.route_table_private_name}-${count.index}"
  }
}

resource "aws_route_table_association" "private" {
  count          = length(var.route_table_private_subnet_ids)
  subnet_id      = var.route_table_private_subnet_ids[count.index]
  route_table_id = aws_route_table.private[count.index].id
}


