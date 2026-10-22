variable "cluster_name" {
  type        = string
  description = "Name of the existing EKS cluster"
}

variable "node_role_arn" {
  type        = string
  description = "IAM role ARN for worker nodes"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnets for worker nodes"
}

variable "instance_types" {
  type        = list(string)
  default     = ["t3.medium"]
  description = "EC2 instance types for worker nodes"
}

variable "desired_size" {
  type    = number
  default = 1
}

variable "min_size" {
  type    = number
  default = 1
}

variable "max_size" {
  type    = number
  default = 2
}
