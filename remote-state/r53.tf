resource "aws_route53_record" "www" {
    count = length(var.instances)
    zone_id = var.zone_id
    name = "${var.instances[count.index]}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = [aws_instance.demo_instance[count.index].private_ip]
    allow_overwrite = true
}

resource "aws_route53_record" "www_public_ip1" {
    for_each = { for k,v in aws_instance.demo_instance : k => v if k == "frontend" }
    zone_id = var.zone_id
    name = "roboshop.${var.domain_name}"
    type = "A"
    ttl = 1
    records = [each.value]
    allow_overwrite = true
}