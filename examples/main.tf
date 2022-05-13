
locals {
  ou_path = "POC/Workloads/Development"
}

module "orgs" {
  source = "../"
}

output "all" {
  value = module.orgs.organizational_units
}

output "development_ou_id" {
  value = try(module.orgs.organizational_units[local.ou_path].id, "")
}

provider "aws" {
  region = "eu-west-2"
}
