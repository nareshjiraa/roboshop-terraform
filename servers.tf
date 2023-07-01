data "aws_ami" "centos" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "frontend-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "catalouge" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "catalouge"
  }
}
resource "aws_route53_record" "catalouge" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "catalouge-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalouge.private_ip]
}
resource "aws_instance" "cart" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "cart-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "mysql-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "rabbitmq-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "redis" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "redis-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "user" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "user-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "shipping" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "shipping-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "mongodb-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "dispatch" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "dispatch"
  }
}
resource "aws_route53_record" "dispatch" {
  zone_id = "Z04515993VDC6UY0MH12J"
  name    = "dispatch-dev.mahadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}

