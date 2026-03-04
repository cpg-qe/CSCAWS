# Existing VPC
data "aws_vpc" "existing_vpc" {
  id = var.vpc_id
}

# Subnet
resource "aws_subnet" "subnetByTFE" {
  vpc_id     = data.aws_vpc.existing_vpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name        = "subnet-by-tfe"
    environment = var.environment
  }
}

# EC2 instance
resource "aws_instance" "ec2ByTFOtest" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnetByTFE.id

  tags = {
    Name        = var.instance_name
    environment = var.environment
  }
}
