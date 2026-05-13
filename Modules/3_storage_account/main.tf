resource "azurerm_storage_account" "main_storage" {
  for_each = { for k, v in var.variable_stg : v.name => v if v.target_provider == var.target }  
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = "Standard"
  account_replication_type = each.value.account_replication_type
}