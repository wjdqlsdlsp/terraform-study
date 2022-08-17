terraform {
  backend "s3" {
    bucket = "jeongbin-terraform-bucket"
    key = "global/s3/terraform.tfstate"
    region = "ap-northeast-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}
