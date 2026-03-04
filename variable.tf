variable "region" {
  type    = string
  default = "us-east-1"
}

variable "access_key" {
  type      = string
  sensitive = true
}

variable "secret_key" {
  type      = string
  sensitive = true
}

variable "vpc_id" {
  type = string
}

variable "vpc_cidr" {
  type = string
default = 10.0.0.0/16
}

variable "subnet_number" {
  type = number
default = 120
}
variable "subnet_cidr" {
  type    = string
  default = ""
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "environment" {
  type = string
}
