resource "azurerm_app_service" "this" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.plan_id

  site_config {
    linux_fx_version = "DOCKER|${var.acr_login_server}/${var.app_name}:latest"
    always_on        = true
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
    DOCKER_REGISTRY_SERVER_URL          = "https://${var.acr_login_server}"
    DOCKER_REGISTRY_SERVER_USERNAME     = var.acr_username
    DOCKER_REGISTRY_SERVER_PASSWORD     = var.acr_password
    PORT                                 = "80"
  }
}
