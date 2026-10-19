# AWS Production Platform — Acceptance Criteria

## 1. Development Environment

- [ ] Git is installed and GitHub authentication works.
- [ ] AWS CLI is configured with the intended development identity.
- [ ] AWS STS confirms the expected AWS account and identity.
- [ ] Terraform is installed and its version is documented.

## 2. Infrastructure as Code

- [ ] Terraform code is organised into reusable modules where appropriate.
- [ ] Terraform formatting checks pass.
- [ ] Terraform validation passes.
- [ ] Provider versions are constrained and the dependency lock file is committed.
- [ ] Infrastructure changes can be reviewed before deployment.

## 3. Security

- [ ] No AWS credentials or private keys are committed to Git.
- [ ] IAM permissions follow least-privilege principles.
- [ ] GitHub Actions uses OIDC for AWS authentication.
- [ ] S3 public access is blocked for infrastructure state storage.
- [ ] Terraform state is encrypted and versioned.
- [ ] Security scanning is included in CI/CD.

## 4. Reliability and Operations

- [ ] Infrastructure deployment and teardown procedures are documented.
- [ ] Monitoring and alerting requirements are documented.
- [ ] AWS budget alerts are configured.
- [ ] Resource ownership and cleanup procedures are documented.

## 5. Cost Management

- [ ] Resources have appropriate project and environment tags.
- [ ] Estimated monthly costs are reviewed before deployment.
- [ ] Costly resources are stopped or removed when not required.
- [ ] Actual AWS spending is reviewed regularly.

## Completion Rule

A criterion is complete only when its implementation has been
verified using an appropriate test, command, configuration review,
or documented evidence.

Criteria that are not yet implemented must remain unchecked.
