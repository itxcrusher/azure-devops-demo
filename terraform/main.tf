module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  acr_name            = var.acr_name
}

module "app_service_plan" {
  source              = "./modules/app_service_plan"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  plan_name           = var.plan_name
  sku_tier            = var.sku_tier
  sku_size            = var.sku_size
}

module "app_service" {
  source              = "./modules/app_service"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  app_name            = var.app_name
  plan_id             = module.app_service_plan.plan_id
  acr_login_server    = module.acr.login_server
  acr_username        = module.acr.acr_username
  acr_password        = module.acr.acr_password
}

module "key_vault" {
  source              = "./modules/key_vault"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  key_vault_name      = var.key_vault_name
}

module "app_insights" {
  source              = "./modules/app_insights"
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  app_insights_name   = var.app_insights_name
}
