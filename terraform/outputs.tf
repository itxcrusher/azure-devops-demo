output "app_service_url" {
  value = module.app_service.app_url
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "key_vault_uri" {
  value = module.key_vault.vault_uri
}
