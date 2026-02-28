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
    Name = "terraform-roboshop-ec2-nstance"
    Project = "Roboshop"
    Terraform  = true
    Environment = "dev"
  }
}

variable "sg_tags" {
    type = map 
    description = "security group tags"
    default = {
        Name = "allow-all-traffic-roboshop"
        Project = "Roboshop"
        Terraform  = true
        Environment = "dev"
    }
}

variable "instances" {
  type = list
  default = ["mongo","catalogue","redis","user","cart","mysql","shipping","payment","frontend"]
}

variable "zone_id" {
  type = string
  default = "Z04536392HCJLZT52Z8K0"
}

variable "domain_name" {
  type= string
  default = "happielearning.com"
}

variable "fruits_list" {
  type = list(string)
  default = [ "apple","banana","apple","orange" ]
}

variable "fruits_set" {
  type = set(string)
  default = [ "apple","banana","apple","orange" ]
}

variable "common_tags" {
  default = {
    Name = "terraform-roboshop"
    Project = "Roboshop"
    Terraform  = true
    Environment = "dev"   
  }
}

variable "sg_env" {
  default = "DEV"
}

variable "sg_project" {
  default = "ROBOSHOP"
}