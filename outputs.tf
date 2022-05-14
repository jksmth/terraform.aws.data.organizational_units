
output "organizational_units" {
  description = <<-EOT
    A map of all organizational units including the root organization. The keys are
    constructed 'path' based on the organizational hierarchy.
  EOT

  value = local.organizational_units
}

output "organizational_units_by_id" {
  description = <<-EOT
    A map of all organizational units including the root organization. The keys are
    the id for the organizational unit.
  EOT

  value = local.organizational_units_by_id

}
