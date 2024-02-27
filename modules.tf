module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  region       = var.region
  project_name = var.project_name
  tags         = local.tags
}