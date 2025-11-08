resource "aws_instance" "ec2-private-1" {
  ami                  = "ami-01dc115371ac25703"
  instance_type        = var.instance-type-list[0]
  key_name             = var.key-pair
  subnet_id            = module.vpc1.private_subnets[1]
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
  
  vpc_security_group_ids = [aws_security_group.private-sg-ec2.id]
  count                  = 1
  tags = {
    Name = "ec2-private"
  }
}