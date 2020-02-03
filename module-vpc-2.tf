provider "aws" {
  alias = "peer"
  region = "us-east-2"
}

module "vpc-2" {
  source = "git::https://github.com/hakten/module-vpc.git"
  providers = {
    aws = "aws.peer"
  }  
cidr            = "192.168.0.0/16"

project         = "Wordpress"
environment     = "Test"

azs             = ["us-east-2a","us-east-2b","us-east-2c"]
public-subnets  = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
private-subnets = []
}

output "vpc-id-2" {
  value = "${module.vpc-2.vpc-id}"
}

output "vpc-cidr-2" {
  value = "${module.vpc-2.vpc-cidr}"
}

output "public-subnets-2" {
  value = "${module.vpc-2.public-subnets}"
}

output "private-subnets-2" {
  value = "${module.vpc-2.private-subnets}"
}