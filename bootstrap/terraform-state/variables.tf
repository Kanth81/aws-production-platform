variable "expected_account_id" {
  description = "The 12-digit AWS account ID where the state bucket will be created."
  type        = string

  validation {
    condition     = can(regex("^[0-9]{12}$", var.expected_account_id))
    error_message = "Provide the expected 12-digit AWS account ID."
  }
}
