output "vpc_id" {
  description = "Development VPC ID"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "Development VPC CIDR"
  value       = module.vpc.vpc_cidr
}

output "availability_zone_ids" {
  description = "Availability Zone IDs used"
  value       = module.vpc.availability_zone_ids
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

output "nat_gateway_ids" {
  description = "NAT Gateway IDs"
  value       = module.vpc.nat_gateway_ids
}

output "eks_cluster_role_arn" {
  description = "IAM role ARN for the EKS control plane"
  value       = module.eks_iam.cluster_role_arn
}

output "eks_node_role_arn" {
  description = "IAM role ARN for EKS worker nodes"
  value       = module.eks_iam.node_role_arn
}

output "eks_cluster_name" {
  value       = module.eks.cluster_name
  description = "EKS cluster name"
}

output "eks_cluster_endpoint" {
  value       = module.eks.cluster_endpoint
  description = "Kubernetes API endpoint"
}

output "eks_cluster_version" {
  value       = module.eks.cluster_version
  description = "Kubernetes version"
}

output "eks_node_group_name" {
  value = module.eks_node_group.node_group_name
}

output "eks_node_group_status" {
  value = module.eks_node_group.node_group_status
}

output "ecr_repository_name" {
  description = "ECR repository for the sample application"
  value       = module.ecr.repository_name
}

output "ecr_repository_url" {
  description = "URL for pushing and pulling the sample application image"
  value       = module.ecr.repository_url
}
