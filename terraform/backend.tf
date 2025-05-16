terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstate123"
    container_name       = "tfstate"
    key                  = "azure-devops-demo.tfstate"
  }
}
