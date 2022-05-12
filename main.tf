
locals {
  root = data.aws_organizations_organization.this.roots[0]

  level_0 = {
    for child in data.aws_organizations_organizational_units.level_0.children :
    child.name => merge({
      parent_id = local.root.id
    }, child)
  }

  level_1 = merge([
    for parent, ou in data.aws_organizations_organizational_units.level_1 : {
      for child in ou.children :
      format("%s/%s", parent, child.name) => merge({
        parent_id = ou.id,
      }, child)
    }
  ]...)

  level_2 = merge([
    for parent, ou in data.aws_organizations_organizational_units.level_2 : {
      for child in ou.children :
      format("%s/%s", parent, child.name) => merge({
        parent_id = ou.id,
      }, child)
    }
  ]...)

  level_3 = merge([
    for parent, ou in data.aws_organizations_organizational_units.level_3 : {
      for child in ou.children :
      format("%s/%s", parent, child.name) => merge({
        parent_id = ou.id,
      }, child)
    }
  ]...)

  level_4 = merge([
    for parent, ou in data.aws_organizations_organizational_units.level_4 : {
      for child in ou.children :
      format("%s/%s", parent, child.name) => merge({
        parent_id = ou.id,
      }, child)
    }
  ]...)


  organizational_units = merge(
    local.level_0,
    local.level_1,
    local.level_2,
    local.level_3,
    local.level_4,
  )

}

data "aws_organizations_organization" "this" {}

data "aws_organizations_organizational_units" "level_0" {
  parent_id = local.root.id
}

data "aws_organizations_organizational_units" "level_1" {
  for_each = local.level_0

  parent_id = each.value.id
}

data "aws_organizations_organizational_units" "level_2" {
  for_each = local.level_1

  parent_id = each.value.id
}

data "aws_organizations_organizational_units" "level_3" {
  for_each = local.level_2

  parent_id = each.value.id
}

data "aws_organizations_organizational_units" "level_4" {
  for_each = local.level_3

  parent_id = each.value.id
}
