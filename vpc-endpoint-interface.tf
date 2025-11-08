resource "aws_vpc_endpoint" "ec2" {
  vpc_id            = module.vpc1.vpc_id
  service_name      = "com.amazonaws.ap-south-1.sqs"
  vpc_endpoint_type = "Interface"
  
  subnet_ids = [module.vpc1.private_subnets[2]]

  security_group_ids = [
    aws_security_group.private-sg-endpoint.id
  ]

  private_dns_enabled = false
}