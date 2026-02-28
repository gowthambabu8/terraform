resource "aws_instance" "demo_instance"{
    ami =  local.ami_id 
    instance_type = lookup(var.instance_type, local.environment)
    vpc_security_group_ids = [ aws_security_group.allows_all_tls.id ]
    tags = {
      Name = "${var.Project}-${local.environment}"
      Project = var.Project 
      Environment = local.environment
    }
}

resource "aws_security_group" "allows_all_tls"{
    name = "allow_all-traffic"
    description = "Allow inbound and outbound traffic"

    tags = {
      Name = "terraform"
      Project = "roboshop"
      Environment = local.environment
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