    module "vpc" {
      source = "git::https://github.com/gowthambabu8/terraform-aws-vpc.git?ref=main"
      project = "roboshop"
      environment = "dev"
    }