locals {
  cluster_name = "containerized-deployment"
  vpc_name     = "vpc-containerized-deployment-${var.environment}"
  region       = "eu-west-2"
  vpc_cidr     = "10.0.0.0/16"
  azs          = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    name = local.vpc_name
  }
}
