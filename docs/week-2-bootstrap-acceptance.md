# Week 2 — Terraform State Bootstrap Acceptance

## 1. AWS Account and Access

- [ ] AWS STS identity verified.
- [ ] STS Account ID matches the account ID in the IAM ARN.
- [ ] Correct AWS region confirmed: eu-west-2.
- [ ] AWS credentials are not committed to Git.

## 2. Terraform Configuration

- [ ] Terraform initialisation succeeds.
- [ ] Terraform formatting passes.
- [ ] Terraform validation passes.
- [ ] Provider dependency lock file is committed.
- [ ] Terraform plan reviewed before deployment.

## 3. S3 State Bucket Security

- [ ] S3 bucket exists in eu-west-2.
- [ ] S3 bucket versioning is enabled.
- [ ] Server-side encryption is enabled.
- [ ] All four S3 public-access-block settings are enabled.
- [ ] Bucket ownership is BucketOwnerEnforced.
- [ ] Bucket policy denies insecure HTTP transport.
- [ ] Terraform state bucket has a deletion safeguard.

## 4. Remote State Migration

- [ ] S3 backend configuration added.
- [ ] Local bootstrap state migrated to S3.
- [ ] S3 state object exists at the expected key.
- [ ] Terraform state can be listed successfully.
- [ ] A subsequent terraform plan reports no unexpected changes.
- [ ] State locking is configured and verified.

## 5. Repository Hygiene

- [ ] Terraform state files are excluded from Git.
- [ ] Terraform plan files are excluded from Git.
- [ ] .terraform directories are excluded from Git.
- [ ] No AWS credentials or private keys are committed.
- [ ] Documentation and Terraform configuration are committed.

## Evidence and Notes

AWS account ID:
AWS region:
State bucket name:
State object key:
Terraform version:
Validation result:
Remote state migration result:
Final plan result:


kanth@Kanth:~/projects/aws-production-platform$ aws s3api get-bucket-versioning \
s-production-pla>   --bucket "aws-production-platform-tfstate-653174262841-d6505fdf" --region eu-west-2
{
    "Status": "Enabled"
}

kanth@Kanth:~/projects/aws-production-platform$ aws s3api get-bucket-encryption \
tform-tfstate-65>   --bucket "aws-production-platform-tfstate-653174262841-d6505fdf" --region eu-west-2
{
    "ServerSideEncryptionConfiguration": {
        "Rules": [
            {
                "ApplyServerSideEncryptionByDefault": {
                    "SSEAlgorithm": "AES256"
                }
            }
        ]
    }
}



kanth@Kanth:~/projects/aws-production-platform$ aws s3api get-public-access-block \
latform-tfstate->   --bucket "aws-production-platform-tfstate-653174262841-d6505fdf" --region eu-west-2
{
    "PublicAccessBlockConfiguration": {
        "BlockPublicAcls": true,
        "IgnorePublicAcls": true,
        "BlockPublicPolicy": true,
        "RestrictPublicBuckets": true
    }
}

Outstanding issues:

## Completion Decision

Status: Completed

Move to Week 3 only after the required security and remote-state
checks have been verified. Record any outstanding issues here.
