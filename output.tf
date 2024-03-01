output "eks_vpc_config" {
  value = module.eks-cluster.eks_vpc_config
}

output "oidc" {
  value = module.eks-cluster.oidc
}