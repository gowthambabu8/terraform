resource "aws_instance" "demo_instance"{
    ami =  var.ami_id
    instance_type = var.environment == "dev" ? var.instance_type : "t2.small"
    vpc_security_group_ids = [ aws_security_group.allows_all_tls.id ]
    tags = var.ec2_tags
}

resource "aws_security_group" "allows_all_tls"{
    name = "allow_all-traffic"
    description = "Allow inbound and outbound traffic"

    tags = {
      Name = "terraform"
      Project = "roboshop"
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
}