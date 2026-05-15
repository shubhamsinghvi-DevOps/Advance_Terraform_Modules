terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.66.0"
    }
  }

#   backend "azurerm" {
#     use_azuread_auth = true
#   }

}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  #subscription_id = "8b94b06a-0dde-4b9d-8b1e-c97ee20d8769"
}
