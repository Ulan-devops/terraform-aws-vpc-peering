module "vpc-1" {
  source = "./module-vpc-1"
  
}
output "vpc_id_1" {
  value = "${module.vpc.vpc_id}"
}

output "vpc_cidr_1" {
  value = "${module.vpc.vpc_cidr}"
}

output "public_subnets_1" {
  value = "${module.vpc.public_subnets}"
}

output "private_subnets_1" {
  value = "${module.vpc.private_subnets}"
}