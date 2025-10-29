###############################################################################
# Terraform AWS Provisioning (Planned)
# - This block simulates infrastructure as code for AWS
# - Demonstrates knowledge of resources, variables, outputs, and providers
###############################################################################

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Backend local (no AWS account needed)
  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"
}

# Example: S3 bucket (simulated)
resource "aws_s3_bucket" "demo_bucket" {
  bucket = "platform-automation-lab-demo"
  acl    = "private"

  tags = {
    Name        = "PlatformAutomationLab"
    Environment = "Demo"
  }
}

# Output to confirm resource creation
output "bucket_name" {
  value = aws_s3_bucket.demo_bucket.bucket
}
