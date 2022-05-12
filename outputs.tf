
output "organizational_units" {
  description = "A map of all organizational units in an single organization, the key is in path format to simplify lookups of nested OUs by name, e.g. mycorp/workloads/development/team1"
  value       = local.organizational_units
}
