module "vpc-2" {
  source = "./module-vpc-2"
  
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