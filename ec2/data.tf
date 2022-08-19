data "terraform_remote_state" "db" {
  backend = "s3"

  config = {
    bucket = "jeongbin-terraform-bucket"
    key = "stage/data-store/mysql/terraform.tfstate"
    region = "ap-northeast-2"
  }
}