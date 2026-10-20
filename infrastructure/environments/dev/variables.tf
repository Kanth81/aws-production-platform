
variable "public_access_cidrs" {
  description = "Public IPv4 addresses allowed to access the EKS API"
  type        = list(string)
}

variable "kubernetes_version" {
  description = "Kubernetes version for EKS"
  type        = string
  default     = "1.36"
}

variable "aws_region" {
  description = "AWS Region for the development environment"
  type        = string
  default     = "eu-west-2"
}

variable "expected_account_id" {
  description = "Expected 12-digit AWS account ID"
  type        = string

  validation {
    condition     = can(regex("^[0-9]{12}$", var.expected_account_id))
    error_message = "Provide a valid 12-digit AWS account ID."
  }
}

variable "vpc_cidr" {
  description = "IPv4 CIDR block for the development VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "enable_nat_gateway" {
  description = "Enable NAT-based outbound IPv4 access for private subnets"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Use one NAT Gateway shared by both private subnets"
  type        = bool
  default     = true
}
