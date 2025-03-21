data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_security_group" "sg" {
  id = module.vpc_security-group.security_group_id
}

data "aws_vpc" "vpc" {
  id = module.vpc.default_vpc_id
}

data "aws_ami" "ami_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}