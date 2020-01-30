module "vpc-1" {
  source = "./module-vpc-1"
  
}
# output "vpc_id" {
#   value = "${module.vpc.vpc_id}"
# }

# output "vpc_cidr" {
#   value = "${module.vpc.vpc_cidr}"
# }

# output "public_subnets" {
#   value = "${module.vpc.public_subnets}"
# }

# output "private_subnets" {
#   value = "${module.vpc.private_subnets}"
# }