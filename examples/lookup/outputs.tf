output "ou_by_path" {
  description = "Organizational unit looked up by constructed 'path'."
  value       = local.ou_by_path
}

output "ou_by_id" {
  description = "Organizational unit looked up by id."
  value       = local.ou_by_id
}

output "ou_parent_by_id" {
  description = "Parent of organizational unit looked up by id."
  value       = local.ou_parent_by_id
}
