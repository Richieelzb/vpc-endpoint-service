module "vpc1" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.17.0"


  name = "${local.Name}-${var.vpc_name_vpc1}"
  cidr = var.vpc_cidr_block_vpc1

  azs             = var.vpc_availability_zones_vpc1
  private_subnets = var.vpc_private_subnets_vpc1
  public_subnets = var.vpc_public_subnets_vpc1

  manage_default_network_acl    = false
  manage_default_route_table    = false
  manage_default_security_group = false

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = var.vpc_enable_nat_gateway_vpc1
  single_nat_gateway = var.vpc_single_nat_gateway_vpc1

  enable_dhcp_options     = true
  map_public_ip_on_launch = true

  tags = local.common_tags
}

