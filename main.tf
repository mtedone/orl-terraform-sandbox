provider "aws" {
  region = "eu-west-2"
}

resource "aws_security_group" "security_group" {
  ingress = [ {
    cidr_blocks = [ "10.0.0.0/24" ]
    description = "value"
    from_port = 22
    ipv6_cidr_blocks = [ "2002:0000:0000:0:0:0:0:0/24" ]
    prefix_list_ids = [ "pl-0d79201f4d485a2f5" ]
    protocol = "TCP"
    security_groups = [ "sg-6ff41b06" ]
    self = false
    to_port = 22
  } ]
  egress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "value"
    from_port = 0
    ipv6_cidr_blocks = [ "0000:0000:0000:0:0:0:0:0/0" ]
    prefix_list_ids = [ "pl-0d79201f4d485a2f5" ]
    protocol = "TCP"
    security_groups = [ "sg-6ff41b06" ]
    self = false
    to_port = 0
  } ]

  tags = {
    "Name" = "AWS_SG"
  }
}