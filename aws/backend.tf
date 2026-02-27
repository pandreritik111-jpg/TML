terraform {
  backend "s3" {
    bucket         = "tf-s1"
    key            = "aws/monitoring.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
