output "app_url" {
  value = azurerm_app_service.this.default_site_hostname
}
