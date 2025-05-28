### ✅ Challenge 2: Import Existing Infrastructure

**Objective**: Import manually created infrastructure into Terraform state.

**Clouds**: AWS and Azure  
**Time Limit**: 30 minutes

#### Tasks:
- Use provided scripts to manually create resources:
  - AWS: EC2 instance, Security Group and S3 bucket
  - Azure: VM, Network Security Group, Storage account and Container
- Write Terraform code to match the manually created resources
- Import them into Terraform state using `terraform import`

#### Deliverables:
- Terraform code matching the manual setup
- `terraform import` commands used