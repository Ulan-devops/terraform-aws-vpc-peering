provider "aws" {
  region = "us-east-2"
}


module "vpc_2" {
  source = "git::https://github.com/hakten/module-vpc.git"

cidr            = "192.168.0.0/16"

project         = "Wordpress"
environment     = "Test"

azs             = ["us-east-2a","us-east-2b","us-east-2c"]
public_subnets  = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
private_subnets = []
}

output "vpc_id_2" {
  value = "${module.vpc_2.vpc_id}"
}

output "vpc_cidr_2" {
  value = "${module.vpc_2.vpc_cidr}"
}

output "public_subnets_2" {
  value = "${module.vpc_2.public_subnets}"
}

output "private_subnets_2" {
  value = "${module.vpc_2.private_subnets}"
}