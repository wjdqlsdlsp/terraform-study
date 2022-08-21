provider "aws" {
  region = "ap-northeast-2"
}

module "webserver-cluster" {
  source = "../modules/webserver-cluster"

  cluster_name = local.cluster_name
  sg_name = local.sg_name
  subnet_name = local.subnet_name

}

locals {
  cluster_name = "stage_cluster"
  sg_name = "stage_sg"
  subnet_name = "stage_subnet"
}

output "t" {
  value = module.webserver-cluster.test_ip
}