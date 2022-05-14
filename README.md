# Organizational Units (data-only)
This is a data-only module which will output maps with either the organization/organization units id or with a constructed 'path' based on the organizational hierarchy as a key to simplify lookups.

## Examples
Full output, see [examples/basic](examples/basic/)

```
Outputs:

ou_by_id = {
  "ou-ab12-bbbbbbbb" = {
    "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-bbbbbbbb"
    "id" = "ou-ab12-bbbbbbbb"
    "name" = "foo"
    "parent_id" = "ou-ab12-aaaaaaaa"
    "path" = "Root/test/foo"
  }
  "ou-ab12-aaaaaaaa" = {
    "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-aaaaaaaa"
    "id" = "ou-ab12-aaaaaaaa"
    "name" = "test"
    "parent_id" = "r-ab12"
    "path" = "Root/test"
  }
  "ou-ab12-cccccccc" = {
    "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-cccccccc"
    "id" = "ou-ab12-cccccccc"
    "name" = "bar"
    "parent_id" = "ou-ab12-bbbbbbbb"
    "path" = "Root/test/foo/bar"
  }
  "ou-ab12-dddddddd" = {
    "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-dddddddd"
    "id" = "ou-ab12-dddddddd"
    "name" = "baz"
    "parent_id" = "ou-ab12-cccccccc"
    "path" = "Root/test/foo/bar/baz"
  }
  "r-ab12" = {
    "arn" = "arn:aws:organizations::012345678901:root/o-abcde12345/r-ab12"
    "id" = "r-ab12"
    "name" = "Root"
    "parent_id" = tostring(null)
    "path" = "Root"
  }
}
ou_by_path = {
  "Root" = {
    "arn" = "arn:aws:organizations::012345678901:root/o-abcde12345/r-ab12"
    "id" = "r-ab12"
    "name" = "Root"
    "parent_id" = null
  }
  "Root/test" = {
    "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-aaaaaaaa"
    "id" = "ou-ab12-aaaaaaaa"
    "name" = "test"
    "parent_id" = "r-ab12"
  }
  "Root/test/foo" = {
    "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-bbbbbbbb"
    "id" = "ou-ab12-bbbbbbbb"
    "name" = "foo"
    "parent_id" = "ou-ab12-aaaaaaaa"
  }
  "Root/test/foo/bar" = {
    "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-cccccccc"
    "id" = "ou-ab12-cccccccc"
    "name" = "bar"
    "parent_id" = "ou-ab12-bbbbbbbb"
  }
  "Root/test/foo/bar/baz" = {
    "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-dddddddd"
    "id" = "ou-ab12-dddddddd"
    "name" = "baz"
    "parent_id" = "ou-ab12-cccccccc"
  }
}
```

Lookup by keys, see [examples/lookup](examples/lookup/)

```
Outputs:

ou_by_id = {
  "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-dddddddd"
  "id" = "ou-ab12-dddddddd"
  "name" = "baz"
  "parent_id" = "ou-ab12-cccccccc"
  "path" = "Root/test/foo/bar/baz"
}
ou_by_path = {
  "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-dddddddd"
  "id" = "ou-ab12-dddddddd"
  "name" = "baz"
  "parent_id" = "ou-ab12-cccccccc"
} 
ou_parent_by_id = {
  "arn" = "arn:aws:organizations::012345678901:ou/o-abcde12345/ou-ab12-cccccccc"
  "id" = "ou-ab12-cccccccc"
  "name" = "bar"
  "parent_id" = "ou-ab12-bbbbbbbb"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_organization.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |
| [aws_organizations_organizational_units.level_0](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organizational_units) | data source |
| [aws_organizations_organizational_units.level_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organizational_units) | data source |
| [aws_organizations_organizational_units.level_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organizational_units) | data source |
| [aws_organizations_organizational_units.level_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organizational_units) | data source |
| [aws_organizations_organizational_units.level_4](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organizational_units) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organizational_units"></a> [organizational\_units](#output\_organizational\_units) | A map of all organizational units under the primary root organization. The key is in path format to<br>simplify lookups of nested OUs by name. |
| <a name="output_organizational_units_by_id"></a> [organizational\_units\_by\_id](#output\_organizational\_units\_by\_id) | A map of all organizational units under the primary root organization. The key is the organizational unit ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
