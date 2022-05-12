<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.13.0 |

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
| <a name="output_organizational_units"></a> [organizational\_units](#output\_organizational\_units) | A map of all organizational units in an single organization, the key is in path format to<br>simplify lookups of nested OUs by name.<br><br>Exmaple: key=mycorp/workloads/development<br>Output:<br>{<br>  mycorp = {<br>    arn       = xxx<br>    id        = xxx<br>    name      = xxx<br>    parent\_id = ooo<br>  }<br>  "mycorp/workloads" = {<br>    arn = yyy<br>    id = yyy<br>    name = yyy<br>    parent\_id = xxx<br>  }<br>  "mycorp/workloads/development" = {<br>    arn = zzz<br>    id = zzz<br>    name = zzz<br>    parent\_id = yyy<br>  }<br>} |
<!-- END_TF_DOCS -->