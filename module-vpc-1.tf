module "vpc-1" {
  source = "./module-vpc-1"
  
}
output "vpc_id_1" {
  value = "${module.vpc-1.vpc_id}"
}

output "vpc_cidr_1" {
  value = "${module.vpc-1.vpc_cidr}"
}

output "public_subnets_1" {
  value = "${module.vpc-1.public_subnets}"
}

output "private_subnets_1" {
  value = "${module.vpc-1.private_subnets}"
}