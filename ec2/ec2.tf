resource "aws_instance" "demo_instance"{
    ami =  "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ aws_security_group.allows_all_tls.id ]
    tags = {
      Name = "terraform"
      Project = "roboshop"
    }
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