# AWS Production Platform

A production-style AWS platform engineering project demonstrating
secure infrastructure provisioning, Kubernetes operations, DevSecOps,
CI/CD automation, observability and reliability engineering.

## Objectives

- Provision AWS infrastructure using reusable Terraform modules.
- Run a containerised application on Amazon EKS.
- Authenticate GitHub Actions to AWS using OIDC.
- Integrate security checks into the delivery pipeline.
- Implement monitoring, alerting and recovery procedures.
- Measure and control cloud costs.

## Architecture

See [docs/architecture.md](docs/architecture.md).

## Project status

Phase 1: Account security, cost controls and repository setup.

## Security

Never commit AWS credentials, secrets, Terraform state files,
or sensitive infrastructure outputs.

## Cost management

Review AWS Budgets and Cost Explorer regularly. Remove temporary
resources after testing and verify that associated resources
have also been removed.
