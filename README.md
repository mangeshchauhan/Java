# Cloud Agent Terraform Repo

This repo contains:
- Terraform modules under `terraform/modules`
- Environment definitions under `envs/`
- Remote state backend setup under `backend/`
- GitHub Actions workflow for plan/apply

## Usage
1. Create S3 bucket + DynamoDB table for state:
   ```bash
   aws s3 mb s3://my-terraform-state-bucket --region us-east-1
   aws dynamodb create-table \
     --table-name terraform-locks \
     --attribute-definitions AttributeName=LockID,AttributeType=S \
     --key-schema AttributeName=LockID,KeyType=HASH \
     --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
