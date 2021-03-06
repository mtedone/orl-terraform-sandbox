variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  description = "vpc CIDR block"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
  description = "Public subnet CIDR"
}

variable "private_subnet_cidr" {
  default = "10.0.2.0/24"
  description = "Private subnet CIDR"
}