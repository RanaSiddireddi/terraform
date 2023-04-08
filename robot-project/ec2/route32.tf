resource "aws_route53_record" "component" {
  zone_id = "Z08504361Q1M69BII5VS1"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = 300
  records = [aws_spot_instance_request.my_spot_server.private_ip]
}

