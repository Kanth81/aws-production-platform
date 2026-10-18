# Architecture Decision Log

## ADR-001: Use Terraform

Status: Accepted

Reason:
Terraform provides repeatable infrastructure provisioning,
reviewable changes and reusable modules.

## ADR-002: Use Amazon EKS

Status: Accepted

Reason:
EKS demonstrates Kubernetes platform engineering,
workload identity, deployment automation and observability.

Trade-off:
The EKS control plane, compute and supporting network
resources incur costs even in a development environment.

## ADR-003: Use GitHub OIDC

Status: Accepted

Reason:
GitHub Actions can obtain short-lived AWS credentials
without storing long-lived AWS access keys.

## ADR-004: Use London Region

Status: Proposed

Reason:
Use eu-west-2 for the initial build to keep the project
in one consistent Region.

## ADR-005: Use S3 remote Terraform state

Status: Proposed

Reason:
Centralised state storage, versioning and native S3
state locking support safer infrastructure operations.
