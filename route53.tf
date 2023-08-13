data "aws_lb" "lb_data" {
  arn = aws_lb.lb.arn
}

resource "aws_route53_record" "teleport" {
  zone_id = "Z02172506FRZHQZZZYFY"
  name    = "teleport.dellops.online"
  type = "A"

  alias {
    name                   = data.aws_lb.lb_data.dns_name
    zone_id                = data.aws_lb.lb_data.zone_id
    evaluate_target_health = true
  }
}