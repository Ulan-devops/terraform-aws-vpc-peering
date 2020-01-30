module "vpc-2" {
  source = "./module-vpc-2"
  
}
output "vpc_id_2" {
  value = "${module.vpc-2.vpc_id}"
}

output "vpc_cidr_2" {
  value = "${module.vpc-2.vpc_cidr}"
}

output "public_subnets_2" {
  value = "${module.vpc-2.public_subnets}"
}

output "private_subnets_2" {
  value = "${module.vpc-2.private_subnets}"
}