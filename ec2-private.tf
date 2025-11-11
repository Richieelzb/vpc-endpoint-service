resource "aws_instance" "ec2-vm-private" {
  ami                    = data.aws_ami.my-data-ami.id
  instance_type          = var.instance-type-list[0]
  key_name               = var.key-pair
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  subnet_id              = module.vpc1.private_subnets[1]
  vpc_security_group_ids = [aws_security_group.private-sg1-ec2.id]

  tags = {
    Name = "baston-ec2-private"
  }
}

resource "aws_instance" "ec2-private-1" {
  ami = "ami-0c93cc426b63c7cf2" //sandbox
  //ami                    = "ami-0ac9ad1a4783969f7" //personal
  instance_type          = var.instance-type-list[0]
  key_name               = var.key-pair
  subnet_id              = module.vpc2.private_subnets[2]
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  vpc_security_group_ids = [aws_security_group.private-sg2-ec2.id]
  tags = {
    Name = "ec2-private-1"
  }
}

resource "aws_instance" "ec2-private-2" {
  ami = "ami-0c93cc426b63c7cf2" //sandbox
  //ami                    = "ami-0ac9ad1a4783969f7" //personal
  instance_type          = var.instance-type-list[0]
  key_name               = var.key-pair
  subnet_id              = module.vpc2.private_subnets[3]
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  vpc_security_group_ids = [aws_security_group.private-sg2-ec2.id]
  tags = {
    Name = "ec2-private-2"
  }
}


