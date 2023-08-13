resource "aws_instance" "teleport-server" {
  ami                    = "ami-08a52ddb321b32a8c"
  instance_type          = "t2.micro"
  key_name               = "teleport"
  subnet_id              = aws_subnet.public_subnet_a.id
  vpc_security_group_ids = [aws_security_group.sg_ec2.id]
  user_data              = file("userdata.sh")
}

/*
resource "aws_instance" "server-example-1" {
  ami                    = "ami-05548f9cecf47b442"
  instance_type          = "t2.micro"
  associate_public_ip_address = true
  key_name               = "teleport"
  subnet_id              = aws_subnet.public_subnet_b.id
  vpc_security_group_ids = [aws_security_group.security_group_ec2.id]
}

resource "aws_instance" "server-example-2" {
  ami                    = "ami-05548f9cecf47b442"
  instance_type          = "t2.micro"
  associate_public_ip_address = true
  key_name               = "teleport"
  subnet_id              = aws_subnet.public_subnet_b.id
  vpc_security_group_ids = [aws_security_group.security_group_ec2.id]
}
*/