resource "aws_key_pair" "key_pair" {
  key_name   = "teleport"
  public_key = file("/home/dellabeneta/.ssh/id_rsa.pub")
}