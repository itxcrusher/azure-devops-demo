variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "acr_name" {
  description = "Azure Container Registry name"
  type        = string
}

variable "plan_name" {
  description = "App Service Plan name"
  type        = string
}

variable "sku_tier" {
  description = "App Service Plan pricing tier"
  type        = string
  default     = "Basic"
}

variable "sku_size" {
  description = "App Service Plan instance size"
  type        = string
  default     = "B1"
}

variable "app_name" {
  description = "App Service name"
  type        = string
}

variable "key_vault_name" {
  description = "Key Vault name"
  type        = string
}

variable "app_insights_name" {
  description = "App Insights instance name"
  type        = string
}
