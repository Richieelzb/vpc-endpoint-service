resource "aws_ec2_instance_connect_endpoint" "connect_endpoint" {
  subnet_id            = module.vpc1.private_subnets[0]

  security_group_ids = [
    aws_security_group.ec2_connect_sg.id
  ]

  tags = {
    Name = "ec2-instance-connect-endpoint"
  }
}