terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.87.0"
    }
  }
  backend "azurerm" {
    # You CANNOT add variables here.
    resource_group_name = "Global-tfstate-RG"
    storage_account_name = "Devtfstate1303470398"
    container_name = "tfstate"
    key = "terraformDev.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = var.rsgname
  location = var.location
}