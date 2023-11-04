provider "aws" {
    region = "us-west-2"
  
}

resource "aws_vpc" "vpctf" {
  cidr_block = "192.168.0.0/16"
  tags = {
    "Name" = "samplevpc"
  }
  
}