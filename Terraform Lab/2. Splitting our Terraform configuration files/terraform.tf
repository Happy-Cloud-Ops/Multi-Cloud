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
  client_id = "f300f5aa-36bf-454c-841cfa2d8f15b"
  client_secret = "kdc8Q~RZd~oGAmYvEJkMeEFBGDTL5WVpdco"
  tenant_id = "38dbefc3-d57f-4955-b62c6e16a4ea8"
  subscription_id = "387407e5-94af-378-4d37af61c732"
}
