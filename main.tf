resource "aws_instance" "my_instance" {
  ami                         = data.aws_ami.ami_linux.id
  instance_type               = "t2.micro"
  subnet_id                   = data.aws_vpc.vpc.public_subnets[0]
  associate_public_ip_address = true
  key_name                    = var.keypair
  vpc_security_group_ids      = [data.aws_security_group.sg.id]

  tags = {
    Name = "${local.resource_prefix}-ec2"
  }
}