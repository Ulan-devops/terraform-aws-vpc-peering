module "vpc_2" {
  source = "git::https://github.com/hakten/module-vpc.git"

cidr            = "192.168.0.0/16"

project         = "Wordpress"
environment     = "Test"

azs             = ["us-east-1a","us-east-1b","us-east-1c"]
public_subnets  = ["192.168.1.0/24","192.168.2.0/24","192.168.3.0/24"]
private_subnets = []
}

output "vpc_id_2" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr_2" {
  value = "${module.vpc.vpc_cidr}"
}

output "public_subnets_2" {
  value = "${module.vpc.public_subnets}"
}

output "private_subnets_2" {
  value = "${module.vpc.private_subnets}"
}