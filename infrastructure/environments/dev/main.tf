module "vpc" {
  source = "../../modules/vpc"

  name         = "aws-production-platform-dev"
  vpc_cidr     = var.vpc_cidr
  cluster_name = "aws-production-platform-dev"

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  tags = {
    Owner       = "platform-engineering"
    CostCentre  = "portfolio"
    Criticality = "non-production"
  }
}

module "eks_iam" {
  source = "../../modules/eks-iam"

  cluster_name = "aws-production-platform-dev"

  tags = {
    Owner       = "platform-engineering"
    CostCentre  = "portfolio"
    Criticality = "non-production"
  }
}

module "eks" {
  source = "../../modules/eks"

  cluster_name       = "aws-production-platform-dev"
  cluster_role_arn   = module.eks_iam.cluster_role_arn
  private_subnet_ids = module.vpc.private_subnet_ids

  public_access_cidrs = var.public_access_cidrs
  kubernetes_version  = var.kubernetes_version

  tags = {
    Owner       = "platform-engineering"
    CostCentre  = "portfolio"
    Criticality = "non-production"
  }

  # Ensure the IAM roles and their policy attachments exist first.
  depends_on = [module.eks_iam]
}

module "eks_node_group" {
  source = "../../modules/eks-node-group"

  cluster_name = module.eks.cluster_name
  node_role_arn = module.eks_iam.node_role_arn

  private_subnet_ids = module.vpc.private_subnet_ids

  instance_types = ["t3.medium"]

  desired_size = 1
  min_size     = 1
  max_size     = 2

  depends_on = [module.eks]
}



