terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "74a6eb5f-983d-4ce49f76f"
  client_secret   = "5Mu8Q~VC6ZtARu9GmgDg8SRO3veaxq"
  tenant_id       = "6723038f-0b17-4679982c8f4f6"
  subscription_id = "8351f2f1-0565-493aec49e131d20"
}

//https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group

resource "azurerm_resource_group" "appgrpv3" {
  name     = "app-grpv3"
  location = "North Europe"
}

// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account

resource "azurerm_storage_account" "javahome17102025" {
  name                     = "javahome17102025"
  resource_group_name      = "app-grpv3"
  location                 = "North Europe"
  account_tier             = "Standard"
  depends_on = [ azurerm_resource_group.appgrpv3 ]
  account_replication_type = "LRS"
}