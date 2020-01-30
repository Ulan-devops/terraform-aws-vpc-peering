provider "aws" {
  region = "us-east-1"
}


module "vpc_1" {
  source = "git::https://github.com/hakten/module-vpc.git"

cidr            = "10.0.0.0/16"

project         = "Wordpress"
environment     = "Test"

azs             = ["us-east-1a","us-east-1b","us-east-1c"]
public_subnets  = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
private_subnets = []
}

output "vpc_id_1" {
  value = "${module.vpc_1.vpc_id}"
}

output "vpc_cidr_1" {
  value = "${module.vpc_1.vpc_cidr}"
}

output "public_subnets_1" {
  value = "${module.vpc_1.public_subnets}"
}

output "private_subnets_1" {
  value = "${module.vpc_1.private_subnets}"
}