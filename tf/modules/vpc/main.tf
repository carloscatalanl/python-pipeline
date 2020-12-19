## VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  tags = {
    Name = "Python - Pipeline - VPC"
  }
}

## PUBLIC Subnet
resource "aws_subnet" "public_subnets" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr
  #availability_zone = data.aws_availability_zones.all.names[count.index]

  tags = {
    Name = "Python PUB Sub"
  }
}

