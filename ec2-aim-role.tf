# IAM Role for EKS Node Group 
resource "aws_iam_role" "ec2_iam_role" {
  name = "${local.Name}-ec2-iam-role"

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "ec2-AmazonSQSFullAccessPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
  role       = aws_iam_role.ec2_iam_role.name
}


resource "aws_iam_instance_profile" "ec2_profile" {
  name = "dev-wallawalla-ec2-instance-profile"
  role = aws_iam_role.ec2_iam_role.name
}
