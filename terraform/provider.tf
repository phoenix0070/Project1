provider "aws" {
  region = var.region_info
}


  


resource "aws_instance" "master" {
    instance_type = var.instance_type_info
    ami = var.ami_info


    tags = {
      Name = "master"
    }
 


}

resource "aws_s3_bucket" "terraform_state_loc" {
  bucket = "harsha-cicd-terraform-state-file"

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name = "harsha-cicd-terraform-state-file-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LOCKID"

  attribute {
    name = "LOCKID"
    type = "S"
  }

}