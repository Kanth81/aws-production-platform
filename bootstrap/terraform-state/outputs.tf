output "terraform_state_bucket_name" {
  description = "S3 bucket used for Terraform state."
  value       = aws_s3_bucket.terraform_state.bucket
}

output "terraform_state_bucket_region" {
  description = "AWS region containing the state bucket."
  value       = "eu-west-2"
}

output "aws_account_id" {
  description = "AWS account in which the bucket was created."
  value       = data.aws_caller_identity.current.account_id
}
