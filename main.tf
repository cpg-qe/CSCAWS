provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}
 
# ── Reference Existing VPC ────────────────────────
data "aws_vpc" "existing_vpc" {
  id = "vpc-046d9499fabb0b219"   # Demo VPC
}
 
# ── Create Subnet in Existing VPC ─────────────────
resource "aws_subnet" "subnetByTFE" {
  vpc_id     = data.aws_vpc.existing_vpc.id   # ← reference existing VPC
  cidr_block = "10.0.50.0/24"
 
  tags = {
    Name        = "subnet-by-tfe"
    environment = var.environment
  }
}
 
# ── Network Interface ─────────────────────────────
resource "aws_network_interface" "nicByTFO" {
  subnet_id   = aws_subnet.subnetByTFE.id
  description = "My NIC"
 
  tags = {
    Name = var.nic_name
  }
}
 
# ── EC2 Instance ──────────────────────────────────
resource "aws_instance" "ec2ByTFOtest" {
  ami           = var.ami
  instance_type = var.instance_type
 
  network_interface {
    network_interface_id = aws_network_interface.nicByTFO.id
    device_index         = 0
  }
 
  tags = {
    Name        = var.instance_name
    environment = var.environment
  }
}
 
