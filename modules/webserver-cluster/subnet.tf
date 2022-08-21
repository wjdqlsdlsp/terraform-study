data "aws_vpc" default {
  default = true
}

resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.default.id
  cidr_block = "172.31.0.0/16"
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_name
  }
}