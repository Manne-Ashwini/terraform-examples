# Terraform S3 Bucket

This Terraform configuration creates an S3 bucket on AWS.

## Prerequisites

Before you begin, ensure you have:

1. An AWS account.
2. AWS credentials configured on your system.
3. Terraform installed on your local machine. You can download it from [terraform.io](https://www.terraform.io/downloads.html).

## Steps

Follow these steps to create the S3 bucket:

1. Clone or download this repository to your local machine.

2. Navigate to the directory containing the Terraform files.

3. Initialize Terraform by running:

    
    terraform init
    

4. Review and modify the terraform.tf file to ensure it matches your desired configuration. You can specify the AWS region and the desired bucket name.

    Example configuration:

    
    provider "aws" {
        region = "us-east-1"
    }

    resource "aws_s3_bucket" "demo" {
        bucket = "my-ashu-test-bucket"
    }
    

5. Plan the infrastructure changes to ensure everything looks correct. Run:

    
    terraform plan
    

6. Apply the Terraform configuration to create the S3 bucket. Run:

    
    terraform apply
    

7. Confirm the changes by typing yes when prompted.

8. Once the command completes, Terraform will output information about the resources created, including the newly created S3 bucket.

## Cleanup

To avoid incurring charges, make sure to destroy the resources when they are no longer needed. Run:

terraform destroy

Confirm the destruction by typing yes when prompted.

## Resources

- [Terraform Documentation](https://www.terraform.io/docs/index.html)
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

This README provides a step-by-step guide for setting up and using the Terraform configuration to create an S3 bucket on AWS.
