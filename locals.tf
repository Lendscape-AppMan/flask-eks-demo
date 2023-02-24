locals {
  cluster_name = "flask-k8s-demo-deployment"
  vpc_name     = "vpc-flask-k8s-demo-deployment-${var.environment}"
  region       = "eu-west-2"
  vpc_cidr     = "10.0.0.0/16"
  azs          = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    name = local.vpc_name
  }
}
