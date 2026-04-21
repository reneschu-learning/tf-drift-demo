terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  backend "azurerm" {
    use_azuread_auth = true
    resource_group_name = "rs-demo-rg"
    storage_account_name = "reneschuterraformsa"
    container_name = "tfstate"
    key = "drift.tfstate"
  }
}

provider "azurerm" {
  features {}
}