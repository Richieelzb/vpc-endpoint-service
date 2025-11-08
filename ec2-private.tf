resource "aws_instance" "ec2-private-1" {
  ami                  = "ami-0c93cc426b63c7cf2"
  instance_type        = var.instance-type-list[0]
  key_name             = var.key-pair
  subnet_id            = module.vpc2.private_subnets[2]
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  vpc_security_group_ids = [aws_security_group.private-sg-ec2.id]
  count                  = 1
  tags = {
    Name = "ec2-private-1"
  }
}

resource "aws_instance" "ec2-private-2" {
  ami                  = "ami-0c93cc426b63c7cf2"
  instance_type        = var.instance-type-list[0]
  key_name             = var.key-pair
  subnet_id            = module.vpc2.private_subnets[3]
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  vpc_security_group_ids = [aws_security_group.private-sg-ec2.id]
  count                  = 1
  tags = {
    Name = "ec2-private-2"
  }
}


