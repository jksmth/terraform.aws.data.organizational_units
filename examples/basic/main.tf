
locals {
  ou_path = "POC/Workloads/Development"
}

module "orgs" {
  source = "../../"
}

provider "aws" {
  region = "eu-west-2"
}
