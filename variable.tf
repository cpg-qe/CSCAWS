variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_id" {
  type    = string
  default = "vpc-046d9499fabb0b219"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.50.0/24"
}

variable "ami" {
  type    = string
  default = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type    = string
  default = "terraform-ec2"
}

variable "environment" {
  type    = string
  default = "dev"
}
