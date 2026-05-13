variable "target" {
  description = "Target environment like dev/test/prod"
  type        = string
}

variable "variable_rg" {
  description = "Map of Resource Groups"
  type = map(object({
    name            = string
    location        = string
    target_provider = string
  }))
}

variable "tags" {
  type    = map(string)
  default = {}
}