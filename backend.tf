terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.41.0"
    }
  }
  #create storage account and keyvault and container inside storage account 
  #then add this block here
  backend "azurerm" {
		resource_group_name = "Terra-rg"
		storage_account_name = "sureshsa01"
		container_name = "tfstate"
		key = "Lab-state.tfstate"
	}  
}

provider "azurerm" {
features {}
}

