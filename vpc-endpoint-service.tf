
resource "aws_vpc_endpoint_service" "nlb_service" {
  acceptance_required        = true
  network_load_balancer_arns = [aws_lb.internal_nlb.arn]
  //private_dns_name            = "service.example.com"  # Your custom DNS name
  //private_dns_enabled         = true

}


#  Allow specific AWS accounts to connect
/*
resource "aws_vpc_endpoint_service_allowed_principal" "allowed" {
  vpc_endpoint_service_id = aws_vpc_endpoint_service.nlb_service.id
  principal_arn           = "arn:aws:iam::123456789012:root" # Replace with the AWS account you want to allow
}
*/