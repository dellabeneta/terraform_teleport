resource "aws_key_pair" "key_pair" {
  key_name   = "teleport"
  public_key = file("/home/della/.ssh/dellabeneta.pub")
}