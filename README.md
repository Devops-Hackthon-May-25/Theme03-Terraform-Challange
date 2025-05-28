
### ✅ Challenge 1: Web Server with ALB and VPC

**Objective**: Provision a web server behind an Application Load Balancer (ALB) within a custom VPC.

**Clouds**: AWS and Azure  
**Time Limit**: 30 minutes

#### Tasks:
- Create a VPC (AWS) / Virtual Network (Azure)
- Deploy a web server (EC2 in AWS / VM in Azure)
- Set up an ALB (AWS) / Load Balancer (Azure)
- Ensure the web server is accessible via the load balancer

#### Deliverables:
- Terraform code for both AWS and Azure
- Output the public DNS or IP of the load balancer

---

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


