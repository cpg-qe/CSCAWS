output "instance_id" {
  value = aws_instance.ec2ByTFOtest.id
}

output "subnet_id" {
  value = aws_subnet.subnetByTFE.id
}
