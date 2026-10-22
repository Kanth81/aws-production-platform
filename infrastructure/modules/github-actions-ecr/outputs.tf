output "role_arn" {
  description = "IAM role assumed by the trusted GitHub Actions workflow"
  value       = aws_iam_role.publisher.arn
}

output "oidc_provider_arn" {
  description = "GitHub Actions OIDC provider ARN"
  value       = aws_iam_openid_connect_provider.github.arn
}
