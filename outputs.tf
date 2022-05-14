
output "organizational_units" {
  description = <<-EOT
    A map of all organizational units under the primary root organization. The key is in path format to
    simplify lookups of nested OUs by name.
  EOT

  value = local.organizational_units
}

output "organizational_units_by_id" {
  description = <<-EOT
    A map of all organizational units under the primary root organization. The key is the organizational unit ID
  EOT

  value = local.organizational_units_by_id

}
