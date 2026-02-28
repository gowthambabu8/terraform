locals {
    ami_id = data.aws_ami.ubuntu.id
    environment = terraform.workspace
}