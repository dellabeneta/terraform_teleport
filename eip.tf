resource "aws_eip" "eip" {
  instance = aws_instance.teleport-server.id
  domain   = "vpc"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.teleport-server.id
  allocation_id = aws_eip.eip.id
}