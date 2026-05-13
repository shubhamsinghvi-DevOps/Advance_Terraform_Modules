variable "target" {
  description = "Target environment like dev/test/prod"
  type        = string
}

variable "variable_stg" {
  description = "Map of Resource Groups"
  type = map(object({
    name            = string
    resource_group_name = string
    location        = string
    account_replication_type = string
    target_provider  = string
    
  }))
}