# Existing VPC
data "aws_vpc" "existing_vpc" {
  id = var.vpc_id
}

# Create subnet automatically
resource "aws_subnet" "subnetByTFE" {
  vpc_id = data.aws_vpc.existing_vpc.id

  cidr_block = cidrsubnet(var.vpc_cidr, 8, var.subnet_number)

  tags = {
    Name        = "terraform-subnet"
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
