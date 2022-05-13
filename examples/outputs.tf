
output "all" {
  description = "Outputs all organizational units as a flat map."
  value       = module.orgs.organizational_units
}

output "development_ou_id" {
  description = "Lookup organizational units ID by path key if exists."
  value       = try(module.orgs.organizational_units[local.ou_path].id, "")
}
