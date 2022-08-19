terraform {
  backend "s3" {
    bucket = "jeongbin-terraform-bucket"
    key = "stage/services/webserver/terraform.tfstate"
    region = "ap-northeast-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}
