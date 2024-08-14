output "my_vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "security_group_id" {
  value = aws_security_group.default.id
}