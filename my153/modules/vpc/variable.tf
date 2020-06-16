variable "vpc_name" {
  description = "VPC Name"
  default     = "dev-vpc"
}

variable "vpcCIDRblock" {
  description = "CIDR for VPC"
  default     = "10.0.0.0/16"
}

variable "pub_subnet" {
  description = "Name of public Subnet"
  default     = "dev-pub-subnet"
}

variable "pub_subnetCIDRblock" {
  description = "Public Subnet Cidr Block"
  default     = "10.0.1.0/24"
}

variable "availabilityZone" {
  description = "Availability Zone for subnets"
  default     = "us-east-1a"
}

variable "prv_subnet" {
  description = "Name of private Subnet"
  default     = "dev-prv-subnet"
}

variable "prv_subnetCIDRblock" {
  description = "Private Subnet Cidr Block"
  default     = "10.0.1.0/24"
}

variable "PUB_route_table" {
  description = "VPC Route Table"
  default     = "dev-Public-Route-Table"
}

variable "PRV_route_table" {
  description = "VPC Route Table"
  default     = "dev-Private-Route-Table"
}

variable "aws_access_key_id" {
  description = "accesskeys"
  default     = "AKIAJHQVTDZRCN7RXHDQ"
}

variable "aws_secret_access_key" {
  description = "accesskeys"
  default     = "ZQAz97QzvtE8j4qR6GAFH0E15RN7UI/LaNiZ9R3d"
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}
