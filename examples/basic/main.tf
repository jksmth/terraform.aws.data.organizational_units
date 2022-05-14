provider "aws" {
  region = var.region
}

module "organization_data" {
  source = "../../"
}
