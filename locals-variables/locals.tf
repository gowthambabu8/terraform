locals {
  sg_full_name = "${var.sg_env}-${var.sg_project}"
  common_tags = {
    Name = "terraform-roboshop"
    Project = "Roboshop"
    Terraform  = true
    Environment = "dev"
  }

  sg_final_tags = merge(local.common_tags, var.sg_tags)
}