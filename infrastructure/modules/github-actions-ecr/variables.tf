variable "repository_owner" {
  description = "GitHub repository owner"
  type        = string
}

variable "repository_name" {
  description = "GitHub repository name"
  type        = string
}

variable "repository_owner_id" {
  description = "Immutable GitHub owner ID"
  type        = string
}

variable "repository_id" {
  description = "Immutable GitHub repository ID"
  type        = string
}

variable "branch" {
  description = "Branch allowed to publish images"
  type        = string
  default     = "main"
}

variable "ecr_repository_arn" {
  description = "ECR repository ARN allowed for image publishing"
  type        = string
}

variable "tags" {
  description = "Tags applied to AWS resources"
  type        = map(string)
  default     = {}
}
