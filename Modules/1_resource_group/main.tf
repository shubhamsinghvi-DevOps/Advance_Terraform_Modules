resource "azurerm_resource_group" "main_rg" {
  for_each = { for k, v in var.variable_rg : v.name => v if v.target_provider == var.target}
  name     = each.value.name
  location = each.value.location

  tags = merge(
    var.tags,
    {
      Environment = each.value.target_provider
      Location    = each.value.location
    }
  )
}