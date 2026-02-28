output "ami_output" {
  value = data.aws_ami.ubuntu.id
}

output "terraform_instance_output" {
  value = data.aws_instance.terraform_instance.arn
}