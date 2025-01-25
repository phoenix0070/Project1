provider "aws" {
  region = ap-south-1
}

module "test" {

  source             = "./terraform"
  ami_info           = "ami-0d2614eafc1b0e4d2"
  instance_type_info = "t2.micro"
  region_info        = "ap-south-1"

}

#this is weebhook for github

# testing this to check weebhook is triggered or not
terraform {

  backend "s3" {
    bucket         = "state-lock-test-1611"
    key            = "harsha/terraform.tfstate "
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock-dynamo" # DynamoDB table for state locking
    # Enable server-side encryption
  }
}
