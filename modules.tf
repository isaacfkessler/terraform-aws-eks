module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  region       = var.region
  project_name = var.project_name
  tags         = local.tags
}

module "eks-cluster" {
  source           = "./modules/cluster"
  project_name     = var.project_name
  region           = var.region
  tags             = local.tags
  public_subnet_1a = module.eks_network.subnet_pub_1a
  public_subnet_1b = module.eks_network.subnet_pub_1b
}

module "managed_node_group" {
  source            = "./modules/managed-node-group"
  project_name      = var.project_name
  tags              = local.tags
  cluster_name      = module.eks-cluster.cluster_name
  subnet_private_1a = module.eks_network.subnet_priv_1a
  subnet_private_1b = module.eks_network.subnet_priv_1b
}

module "aws-load-balancer-controller" {
  source       = "./modules/load-balancer-controller"
  project_name = var.project_name
  tags         = local.tags
}