resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09ee145e84c525325"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z0541078297KU8FMA9FR1"
  name    = "frontend.ashudevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.web.private_ip]
}