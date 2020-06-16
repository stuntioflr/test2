provider "aws" {
  access_key  = "${var.aws_access_key_id}"
  secret_key  = "${var.aws_secret_access_key}"
  region      = "${var.region}"
}

resource "aws_vpc" "My_VPC" {
  cidr_block           = "${var.vpcCIDRblock}"
  #instance_tenancy     = "${var.instanceTenancy}"
  enable_dns_support   = true 
  enable_dns_hostnames = true

  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_subnet" "VPC_Public_Subnet" {
  vpc_id                  = "${aws_vpc.My_VPC.id}"
  cidr_block              = "${var.pub_subnetCIDRblock}"
  availability_zone       = "${var.availabilityZone}"
  tags = {
     Name = "${var.pub_subnet}"
  }
}

resource "aws_subnet" "VPC_Private_Subnet" {
  vpc_id                  = "${aws_vpc.My_VPC.id}"
  cidr_block              = "${var.prv_subnetCIDRblock}"
  availability_zone       = "${var.availabilityZone}"
  tags = {
     Name = "${var.prv_subnet}"
  }
}

resource "aws_route_table" "PUB_route_table" {
  vpc_id = "${aws_vpc.My_VPC.id}"
  tags = {
     Name = "${var.PUB_route_table}"
  }
}

resource "aws_route_table" "PRV_route_table" {
  vpc_id = "${aws_vpc.My_VPC.id}"
  tags = {
     Name = "${var.PRV_route_table}"
  }
}

resource "aws_route_table_association" "pub_subnet_association" {
  subnet_id      = "${aws_subnet.VPC_Public_Subnet.id}"
  route_table_id = "${aws_route_table.PUB_route_table.id}"
}

resource "aws_route_table_association" "prv_subnet_association" {
  subnet_id      = "${aws_subnet.VPC_Private_Subnet.id}"
  route_table_id = "${aws_route_table.PRV_route_table.id}"
}

