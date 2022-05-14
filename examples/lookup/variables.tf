variable "region" {
  default     = "eu-west-2"
  type        = string
  description = "AWS region for provider"
}

variable "ou_path" {
  default     = "Root/test/foo/bar/baz"
  type        = string
  description = "Path of organizational unit to lookup, e.g. Root/test/foo/bar/baz"
}
