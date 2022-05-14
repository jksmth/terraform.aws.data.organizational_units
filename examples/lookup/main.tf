provider "aws" {
  region = var.region
}

locals {
  ou_by_path      = module.organization_data.organizational_units[var.ou_path]
  ou_by_id        = module.organization_data.organizational_units_by_id[local.ou_by_path.id]
  ou_parent_by_id = module.organization_data.organizational_units_by_id[local.ou_by_path.parent_id]
}

module "organization_data" {
  source = "../../"
}
