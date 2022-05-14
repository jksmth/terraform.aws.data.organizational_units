
output "ou_by_path" {
  description = "Outputs all organizational units as a flat map."
  value       = module.organization_data.organizational_units
}

output "ou_by_id" {
  description = "Outputs all organizational units as a flat map using the ID as the map key."
  value       = module.organization_data.organizational_units_by_id
}
