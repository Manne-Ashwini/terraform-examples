# Terraform EC2 Instance

This Terraform configuration sets up an EC2 instance on AWS.

## Prerequisites

Before you begin, make sure you have the following:

1. An AWS account.
2. AWS credentials configured on your system.
3. Terraform installed on your local machine. You can download it from [terraform.io](https://www.terraform.io/downloads.html).

## Steps

Follow these steps to create the EC2 instance:

1. Clone or download this repository to your local machine.

2. Navigate to the directory containing the Terraform files.

3. Initialize Terraform by running the following command:

    
    terraform init
    

4. Review and modify the terraform.tf file to ensure it matches your desired configuration. You can specify the AWS region, AMI ID, instance type, and other parameters.

    Example configuration:

    hcl
    provider "aws" {
        region = "us-east-1"
    }

    resource "aws_instance" "example" {
        ami           = "ami-0c7217cdde317cfec"
        instance_type = "t2.micro"
        key_name      = "login_key"
        tags = {
            Name = "Example"
        }
    }
    

5. Plan the infrastructure changes to ensure everything looks correct. Run:

    
    terraform plan
    

6. Apply the Terraform configuration to create the EC2 instance. Run:

    
    terraform apply
    

7. Confirm the changes by typing yes when prompted.

8. Once the command completes, Terraform will output information about the resources created, including the public IP address of the EC2 instance.

9. You can now access your EC2 instance using SSH or any other preferred method.

## Cleanup

To avoid incurring charges, make sure to destroy the resources when they are no longer needed. Run:


Confirm the destruction by typing yes when prompted.

## Resources

- [Terraform Documentation](https://www.terraform.io/docs/index.html)
- [AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
Make sure to replace placeholders like AMI IDs, key names, and AWS regions with your actual values. This README provides a step-by-step guide for setting up and using the Terraform configuration to create an EC2 instance on AWS
