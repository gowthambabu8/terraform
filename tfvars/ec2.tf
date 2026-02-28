resource "aws_instance" "demo_instance"{
    ami =  data.aws_ami.ubuntu.id 
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.allows_all_tls.id ]
    tags = {
      Name = "${var.Project}-${var.environment}"
      Project = var.Project 
      Environment = var.environment
    }
}

resource "aws_security_group" "allows_all_tls"{
    name = "allow_all-traffic"
    description = "Allow inbound and outbound traffic"

    tags = {
      Name = "terraform"
      Project = "roboshop"
      Environment = var.environment
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