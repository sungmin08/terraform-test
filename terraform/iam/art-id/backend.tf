terraform {
  required_version = "= 0.12.24" # Terraform Version 

  backend "s3" {
    bucket         = "art-id-apnortheast2-tfstate" # Set bucket name 
    key            = "art/terraform/iam/art-id/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock" # Set DynamoDB Table
  }
}
