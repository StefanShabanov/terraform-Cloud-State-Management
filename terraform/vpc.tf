module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name            = var.VPC_NAME
  cidr            = var.VpcCIDR
  azs             = [var.Zone1, var.Zone2, var.Zone3]
  private_subnets = [var.PrivSub1CIRD, var.PrivSub2CIRD, var.PrivSub3CIRD]
  public_subnets  = [var.PubSub1CIDR, var.PubSub2CIDR, var.PubSub3CIDR]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "prod"
  }
  vpc_tags = {
    Name = var.VPC_NAME
  }
}