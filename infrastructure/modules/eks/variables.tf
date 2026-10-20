variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_role_arn" {
  description = "IAM role ARN for the EKS control plane"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnets for the EKS control plane"
  type        = list(string)

  validation {
    condition     = length(var.private_subnet_ids) >= 2
    error_message = "Provide at least two private subnets."
  }
}

variable "public_access_cidrs" {
  description = "IPv4 CIDRs allowed to access the public Kubernetes API endpoint"
  type        = list(string)

  validation {
    condition = (
      length(var.public_access_cidrs) > 0 &&
      alltrue([
        for cidr in var.public_access_cidrs :
        can(cidrnetmask(cidr)) && endswith(cidr, "/32")
      ])
    )
    error_message = "Provide one or more IPv4 /32 CIDRs to restrict access to individual addresses."
  }
}

variable "kubernetes_version" {
  description = "Kubernetes minor version for EKS"
  type        = string
  default     = "1.36"
}

variable "tags" {
  description = "Tags applied to EKS resources"
  type        = map(string)
  default     = {}
}
