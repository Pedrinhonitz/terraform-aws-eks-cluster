output "eks_subnet_public_1a" {
  value = "module.eks_network.eks_subnet_public_1a"
}

output "eks_subnet_public_1b" {
  value = "module.eks_network.eks_subnet_public_1b"
}

output "eks_vpc_config" {
  value = "module.carboncloud_eks_cluster.eks_vpc_config"
}

output "oidc" {
  value = module.eks_cluster.oidc
}