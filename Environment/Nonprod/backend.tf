
terraform {
  backend "s3" {
    bucket         = "nihal-terraform-state-bucket111"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}