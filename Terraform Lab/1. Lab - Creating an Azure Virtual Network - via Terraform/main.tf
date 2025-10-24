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
  client_id       = "74a6eb5f-983d-46da-76f"
  client_secret   = "5Mu8Q~VC6r.wYoyQGmgDg8SRO3veaxq"
  tenant_id       = "6723038f-0b46ede-b79982c8f4f6"
  subscription_id = "8351f2f1-0569f1-aec49e131d20"
}


resource "azurerm_resource_group" "appgrpv2" {
  name     = "appgrpv2"
  location = "North Europe"
}

// https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network

resource "azurerm_virtual_network" "appgrpv2" {
  name                = "appgrpv2"
  location            = "North Europe"
  resource_group_name = azurerm_resource_group.appgrpv2.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name             = "websubnet01"
    address_prefixes = ["10.0.0.0/18"]
  }

  subnet {
    name             = "appsubnet01"
    address_prefixes = ["10.0.64.0/18"]
  }
  subnet {
    name             = "appsubnet02"
    address_prefixes = ["10.0.192.0/18"]
  }
  subnet {
    name             = "appsubnet03"
    address_prefixes = ["10.0.128.0/18"]
  }

}
terraform {
  backend "azurerm" {
    resource_group_name  = "app-grpv3"
    storage_account_name = "javahome17102025"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}