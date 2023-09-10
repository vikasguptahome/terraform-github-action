terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "=2.93.0"
      }
      azuread  = {
        source = "hashicorp/azurerm"
      }
    }
    backend "azurerm" {
      resource_group_name = "demo-for-terraform-backendfile"
      storage_account_name = "store-back-file"
      container_name = "tfstate"
      key = "demo.terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
  #subscription_id = var.subscription_id
  #client_id = var.client_id
  #client_secret = var.client_secret
  #tenant_id = var.tenant_id


}

resource "azurerm_resource_group" "rg" {
  name = "demo_terraform"
  location = "East US"
}