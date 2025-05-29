
### ✅ Challenge 1: Provision Infra

**Objective**: Provision a server

**Clouds**: AWS and Azure  
**Time Limit**: 30 minutes

#### Tasks:
- Deploy a web server (EC2 in AWS / VM in Azure)
- Set up an S3 Bucket (AWS) / Stroage Account (Azure)
- Ensure the web server is accessible
- please use the region ap-south-1(AWS) and centralindia (Azure)

#### Deliverables:
- Terraform code for AWS or Azure

---

### ✅ Challenge 2: Import Existing Infrastructure

**Objective**: Import manually created infrastructure into Terraform state.

**Clouds**: AWS and Azure  
**Time Limit**: 30 minutes

#### Tasks:
- Use provided scripts to manually create resources:
  - AWS: EC2 instance and S3 bucket
  - Azure: VM and storage account
- Write Terraform code to match the manually created resources
- Import them into Terraform state using `terraform import`

#### Deliverables:
- Terraform code matching the manual setup
- `terraform import` commands used

---

### ✅ Challenge 3: Debug Broken Terraform Modules

**Objective**: Fix a broken Terraform module 

**Clouds**: AWS and Azure  
**Time Limit**: 30 minutes

#### Tasks:
- Analyze the provided Terraform module
- Identify and fix syntax and logic issues
- Ensure the module deploys successfully

#### Deliverables:
- Fixed Terraform module
- Explanation of what was broken and how it was fixed


