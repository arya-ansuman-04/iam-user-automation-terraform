# IAM User Automation with Terraform

## Objective

Create an AWS IAM user with controlled S3 read-only permissions using Terraform.

## Tools Used

- AWS IAM
- Terraform
- AWS CLI
- Ubuntu

## Resources Created

- IAM User: capstone-s3-reader
- Inline IAM Policy: s3-read-policy

## Permissions

The IAM user has the following permissions:

- s3:GetObject
- s3:ListBucket

## Implementation

1. Configured AWS provider using Terraform.
2. Created an IAM user.
3. Defined the S3 read policy as a Terraform variable.
4. Attached the inline policy to the IAM user.
5. Applied the configuration using Terraform.
6. Verified the user and policy using AWS CLI.

## Verification Commands

```bash
aws iam get-user --user-name capstone-s3-reader

aws iam get-user-policy \
  --user-name capstone-s3-reader \
  --policy-name s3-read-policy
```

## Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

## Result

Successfully automated IAM user creation and policy assignment using Terraform.
