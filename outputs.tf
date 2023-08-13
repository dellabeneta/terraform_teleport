output "instance_server_ami" {
  value = aws_instance.teleport-server.ami
}

output "instance_server_type" {
  value = aws_instance.teleport-server.instance_type
}

output "elastic_ip_instance" {
  value = aws_eip.eip.public_ip
}

output "application_url" {
  value = aws_route53_record.teleport.name
}