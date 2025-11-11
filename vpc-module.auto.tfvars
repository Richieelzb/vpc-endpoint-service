# VPC1 Variables
vpc_name_vpc1       = "vpc-1"
vpc_cidr_block_vpc1 = "10.10.0.0/16"
//vpc_availability_zones_vpc1 = ["eu-west-1a", "eu-west-1b"]           //personal
vpc_availability_zones_vpc1 = ["ap-south-1a", "ap-south-1b"] //sandbox
vpc_private_subnets_vpc1    = ["10.10.0.0/17", "10.10.128.0/18", "10.10.192.0/19", "10.10.224.0/20"]
vpc_single_nat_gateway_vpc1 = true
vpc_enable_nat_gateway_vpc1 = false

# VPC2 Variables
vpc_name_vpc2       = "vpc-2"
vpc_cidr_block_vpc2 = "20.0.0.0/16"
//vpc_availability_zones_vpc2 = ["eu-west-1a", "eu-west-1b"]         //personal
vpc_availability_zones_vpc2 = ["ap-south-1a", "ap-south-1b"] //sandbox
vpc_private_subnets_vpc2    = ["20.0.0.0/17", "20.0.128.0/18", "20.0.192.0/19", "20.0.224.0/19"]

