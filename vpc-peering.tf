provider "aws" {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

resource "aws_vpc_peering_connection" "connect" {
  vpc_id        = "${module.vpc-1.vpc_id_1}"
  peer_owner_id = "${data.aws_caller_identity.current.account_id}"
  peer_vpc_id   = "${module.vpc-2.vpc_id_2}"
  peer_region   = "us-east-2"
  auto_accept   = true
}

provider "aws" {
  alias  = "peer"
  region = "us-east-2"
}

resource "aws_vpc_peering_connection_accepter" "accept" {
  provider                  = "aws.peer"
  vpc_peering_connection_id = "${aws_vpc_peering_connection.connect.id}"
  auto_accept               = true
}