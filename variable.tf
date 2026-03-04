variable "access_key" {
  type      = string
  sensitive = true
}
 
variable "secret_key" {
  type      = string
  sensitive = true
}
 
variable "region" {
  type    = string
  default = "us-east-1"
}
 
variable "environment" {
  type    = string
  default = "dev"
}
 
variable "ami" {
  type    = string
  default = "ami-0c55b159cbfafe1f0"
}
 
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
 
variable "nic_name" {
  type    = string
  default = "my-nic"
}
 
variable "instance_name" {
  type    = string
  default = "my-ec2"
}
