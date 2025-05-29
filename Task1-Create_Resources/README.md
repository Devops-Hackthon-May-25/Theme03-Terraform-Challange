### ✅ Challenge 1: Web Server with ALB and VPC

**Objective**: Provision a web server behind an Application Load Balancer (ALB) within a custom VPC.

**Clouds**: AWS and Azure  
**Time Limit**: 30 minutes

#### Tasks:
- Create a VPC (AWS) / Virtual Network (Azure)
- Deploy a web server (EC2 in AWS / VM in Azure)
- Set up an ALB (AWS) / Load Balancer (Azure)
- Ensure the web server is accessible via the load balancer
- Please use the given index.html
- Please use us-east-1 region for AWS and eastus location for Azure


#### Deliverables:
- Terraform code for both AWS and Azure
- Output the public DNS or IP of the load balancer

#### Recommended Terraform Folder Struture:

```plaintext
challenge1_webserver/
├── main.tf                    
├── variables.tf                 
├── outputs.tf                   
├── backend.tf (optional)       
├── terraform.tfvars (optional) 
├── modules/   (optional)                  
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── webserver/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── alb/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
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