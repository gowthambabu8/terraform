data "aws_ami" "ubuntu" {
  most_recent = true

  owners = ["973714476881"] # Canonical

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
