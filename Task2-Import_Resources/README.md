### ✅ Challenge 2: Import Existing Infrastructure

**Objective**: Import manually created infrastructure into Terraform state.

**Clouds**: AWS and Azure  
**Time Limit**: 30 minutes

#### Tasks:
- Use provided scripts to manually create resources:
  - AWS: EC2 instanceand S3 bucket. Resources created in Mumbai region with the naming convention of task2-import-me-<resource name>

  - Azure: VM and Storage account. Resources created in CentralIndia location
- Write Terraform code to match the manually created resources
- Import them into Terraform state using `terraform import`

#### Deliverables:
- Terraform code matching the manual setup
- `terraform import` commands used
