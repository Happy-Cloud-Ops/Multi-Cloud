terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "xxxxxxxxxxxxxxf"
  client_secret   = "xxxxxxxxxxxxxxxx"
  tenant_id       = "xxxxxxxxxxxxxxxxxxxxxxx"
  subscription_id = "xxxxxxxxxxxxxxxxxx"
}