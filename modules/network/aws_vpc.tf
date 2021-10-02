resource "aws_vpc" "vpc" {
  cidr_block = "10.10.0.0/16"
  tags = {
    "Name" = "${var.env}-${var.app}-vpc"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.10.10.0/24"
  tags = {
    "Name" = "${var.env}-${var.app}-private_subnet"
  }
}
