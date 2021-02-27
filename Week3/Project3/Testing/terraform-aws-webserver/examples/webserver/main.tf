# this is the main file, which will call the modules
terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "3.7"
      }
  }
}

provider "aws" {
  region = var.region
}

module "webserver" {
  source = "../../"  # this specifies the path of the module being called upon
  servername = var.servername  # here we are specifying the variables defined in the variables.tf file
  size = "t3.micro"
}