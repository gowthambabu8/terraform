module "ec2" {
  source = "../terraform-aws_instance"
  ami_id = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  project = var.project_name
  environment = var.env
  sg_ids = []
  tags = {
    Name = "${var.project_name}-${var.env}-${var.component}"
    Component = var.component
  }
}