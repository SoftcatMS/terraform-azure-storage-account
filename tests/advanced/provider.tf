terraform {
  required_version = ">=1.0.0"

  backend "azurerm" {
    resource_group_name  = "rg-terraform-modules-state"
    storage_account_name = "softcatmodulestate"
    container_name       = "tf-modules-azure-storage-account-advanced"
    key                  = "terraform.tfstate"
  }

  required_providers {
    # Uncomment required providers and delete unneeded
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

