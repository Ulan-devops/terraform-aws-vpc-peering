provider "aws" {
  region = "us-east-2"
}


module "vpc" {
  source = "git::https://github.com/hakten/module-vpc.git"

cidr            = "192.168.0.0/16"

project         = "Wordpress"
environment     = "Test"

azs             = ["us-east-2a","us-east-2b","us-east-2c"]
public_subnets  = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
private_subnets = []
}

output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr" {
  value = "${module.vpc.vpc_cidr}"
}

output "public_subnets" {
  value = "${module.vpc.public_subnets}"
}

output "private_subnets" {
  value = "${module.vpc.private_subnets}"
}