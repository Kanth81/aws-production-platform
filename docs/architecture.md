# Architecture Overview

## Purpose

Build a secure, observable and repeatable AWS platform for
deploying containerised applications.

## Initial design

- AWS Region: eu-west-2 (London)
- Environment: dev
- Infrastructure as Code: Terraform
- Container platform: Amazon EKS
- Image registry: Amazon ECR
- CI/CD: GitHub Actions
- AWS authentication: IAM Identity Center locally and GitHub OIDC in CI
- Monitoring: Amazon CloudWatch, Prometheus and Grafana

## Network design

- VPC spanning at least two Availability Zones.
- Public subnets for explicitly required ingress components.
- Private subnets for worker nodes and application workloads.
- Controlled outbound connectivity.
- No public SSH access to worker nodes.
- Restricted Kubernetes API access.

## Security principles

- Least-privilege IAM.
- Encryption at rest and in transit where applicable.
- No long-lived AWS credentials in GitHub Actions.
- Container and infrastructure security scanning.
- Kubernetes workload identity and security policies.

## Cost controls

- Monthly AWS budget and notifications.
- Resource tagging.
- Regular cost reviews.
- Teardown of temporary resources.
- Verification of retained billable resources.

## Reliability

- Health probes and resource limits.
- Automated workload recovery.
- Deployment rollback procedures.
- Tested backup and restoration procedures.

## Current status

Design stage. No application infrastructure has been deployed yet.
