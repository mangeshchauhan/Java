variable "name" {
  type        = string
  description = "Name of the VPC"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "Public subnet CIDRs"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
}
