variable "environment" {
  type = string
  default = "uat"
}
variable "ami_id" {
    type = string
    description = "RHEL 9"
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type = string
  description = "instance type"
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map
  description = "insance tags"
  default = {
    Name = "terraform-roboshop"
    Project = "Roboshop"
    Terraform  = true
    Environment = "dev"
  }
}

variable "sg_tags" {
    type = map 
    description = "security group tags"
    default = {
        Name = "allow-all-traffic"
        Project = "Roboshop"
        Terraform  = true
        Environment = "dev"
    }
}