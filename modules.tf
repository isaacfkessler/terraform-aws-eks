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