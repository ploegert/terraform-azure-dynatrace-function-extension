# ==================================================
# Providers
# ==================================================
provider "azurerm" {
  version = "~> 2.32.0" #"~> 1.39"
  features {}
  client_id       = var.deployment.client_id
  subscription_id = var.deployment.subscription_id
  tenant_id       = var.deployment.tenant_id
  client_secret   = var.deployment.client_secret
}