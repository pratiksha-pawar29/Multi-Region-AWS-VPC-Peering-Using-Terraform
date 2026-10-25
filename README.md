# Multi-Region-AWS-VPC-Peering-Using-Terraform

Multi-Region AWS VPC Peering Using Terraform

📌 Project Overview

This project demonstrates how to create and manage Virtual Private Clouds (VPCs) in two different AWS regions using Terraform. It establishes cross-region VPC peering and configures route tables to enable private communication between the networks.

The infrastructure is defined using Terraform, following the Infrastructure as Code (IaC) approach.

🎯 Objectives

- Create AWS VPCs in two different regions.
- Configure public and private subnets.
- Establish cross-region VPC peering.
- Configure route tables for communication between VPCs.
- Automate infrastructure provisioning using Terraform.
- Understand multi-region AWS networking.

🏗️ Architecture

AWS Region 1: "us-east-1" (US East – N. Virginia)

- VPC-1: "10.0.0.0/16"
- Public Subnet: "10.0.1.0/24"
- Private Subnet: "10.0.11.0/24"

AWS Region 2: "eu-west-1" (Europe – Ireland)

- VPC-2: "10.1.0.0/16"
- Public Subnet: "10.1.1.0/24"
- Private Subnet: "10.1.11.0/24"

The two VPCs are connected through an inter-region VPC peering connection. Route tables are configured to direct traffic to the peer VPC using the peering connection.

🛠️ Technologies Used

- Amazon Web Services (AWS)
- Terraform
- HashiCorp Configuration Language (HCL)
- AWS VPC
- VPC Peering
- Subnets and Route Tables
- Infrastructure as Code (IaC)

📂 Project Structure

multi-region-vpc-peering/
├── main.tf
├── vpc.tf
├── peering.tf
├── route-tables.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md

⚙️ Implementation Steps

1. Configure AWS credentials and Terraform providers for both regions.
2. Create the two VPCs with non-overlapping CIDR blocks.
3. Create public and private subnets in each VPC.
4. Establish the inter-region VPC peering connection.
5. Configure routes in both VPC route tables.
6. Configure security group rules to permit the required traffic.
7. Validate the Terraform configuration and review the execution plan.
8. Apply the configuration and verify the resources in the AWS Console.

🚀 How to Run

Prerequisites: AWS CLI, Terraform, and an AWS account with the required IAM permissions.

Initialize Terraform:

terraform init

Validate the configuration:

terraform validate

Review the infrastructure plan:

terraform plan

Create the infrastructure:

terraform apply

After deployment, verify the VPC peering status, route tables, and connectivity using appropriately configured test resources.

📚 Key Learnings

- AWS VPC networking fundamentals.
- Cross-region VPC peering.
- Terraform provider aliases and resource management.
- CIDR block planning and subnet design.
- Route table configuration.
- Infrastructure automation using Terraform.
- Managing cloud infrastructure across multiple AWS regions.

🔮 Future Enhancements

- Implement reusable Terraform modules.
- Configure remote Terraform state using Amazon S3 and state locking.
- Automate infrastructure deployment using GitHub Actions.
- Add monitoring and logging.
- Explore AWS Transit Gateway for larger network architectures.

🔐 Security and Best Practices

- Never commit AWS access keys, secrets, or sensitive ".tfvars" files.
- Use IAM roles or securely configured AWS credentials.
- Apply least-privilege security group and network access rules.
- Review infrastructure changes before applying them.
- Run "terraform destroy" when the lab environment is no longer required.

👨‍💻 Author
Pratiksha Pawar 