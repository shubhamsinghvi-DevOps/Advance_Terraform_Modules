module "Resource_group" {
  source      = "../../Modules/1_resource_group"
  variable_rg = var.module_rg
  target      = var.target
  tags        = var.tags
}

module "Storage_group" {
  source       = "../../Modules/3_storage_account"
  variable_stg = var.module_stg
  target       = var.target
  depends_on   = [module.Resource_group]
}
