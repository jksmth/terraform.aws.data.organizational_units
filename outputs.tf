
output "organizational_units" {
  description = <<-EOT
    A map of all organizational units in an single organization, the key is in path format to
    simplify lookups of nested OUs by name.

    Exmaple: key=mycorp/workloads/development
    Output:
    {
      mycorp = {
        arn       = xxx
        id        = xxx
        name      = xxx
        parent_id = ooo
      }
      "mycorp/workloads" = {
        arn = yyy
        id = yyy
        name = yyy
        parent_id = xxx
      }
      "mycorp/workloads/development" = {
        arn = zzz
        id = zzz
        name = zzz
        parent_id = yyy
      }
    }
  EOT

  value = local.organizational_units
}
