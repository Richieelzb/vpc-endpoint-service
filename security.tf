resource "aws_security_group" "public-sg-ec2" {
  name        = "allow-pub-sg-ec2"
  description = "allow-pub-sg-ec2"
  vpc_id      = module.vpc1.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "pub-ec2-sg"
  }
}

resource "aws_security_group" "private-sg-ec2" {
  name        = "allow-pvt-sg-ec2"
  description = "allow-pvt-sg-ec2"
  vpc_id      = module.vpc1.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.10.0.0/16"]
  }

  tags = {
    Name = "pvt-ec2-sg"
  }
}


resource "aws_security_group" "private-sg-endpoint" {
  name        = "allow-pvt-sg-endpoint"
  description = "allow-pvt-sg-endpoint"
  vpc_id      = module.vpc1.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.10.0.0/16"]
  }

  tags = {
    Name = "pvt-ec2-endpoint"
  }
}



resource "aws_security_group" "ec2_connect_sg" {
  name        = "ec2-connect-endpoint-sg"
  description = "Security group for EC2 Instance Connect Endpoint"
  vpc_id      = module.vpc1.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.0.0/16"]
  }

  egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.0.0/16"]
  }

  tags = {
    Name = "ec2_connect_sg"
  }
}
