module "Resource_group" {
  source      = "../../Modules/1_resource_group"
  variable_rg = var.module_rg
  target      = var.target
  tags        = var.tags
}
