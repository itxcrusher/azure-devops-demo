output "login_server" {
  value = azurerm_container_registry.this.login_server
}

output "acr_username" {
  value = azurerm_container_registry.this.admin_username
}

output "acr_password" {
  value = azurerm_container_registry.this.admin_password
}
