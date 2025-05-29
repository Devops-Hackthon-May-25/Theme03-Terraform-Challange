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
Terraform code for AWS or Azure

#### Recommended Terraform Folder Struture:

```plaintext
challenge1_webserver/
├── main.tf                    
├── variables.tf                 
├── outputs.tf                   
├── backend.tf (optional)       
├── terraform.tfvars (optional) 
├── modules/   (optional)                  
│   ├── s3/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── webserver/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
└── README.md
```

#### ✅ Optional Best Practices (Bonus Points)

Modularization
Encourage breaking down infrastructure into reusable modules (vpc, webserver, alb).

Remote Backend
Suggest using a remote backend like S3 (AWS) or Azure Storage Account for state management:

State Locking 
Use DynamoDB (AWS) or blob lease (Azure) to prevent concurrent changes.

Naming Conventions
Use consistent and descriptive names (e.g., challenge1-vpc, challenge1-alb).
