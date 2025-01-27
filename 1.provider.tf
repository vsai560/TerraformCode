#Providers are a logical abstraction of an upstream API. 
#They are responsible for understanding API interactions and exposing resources.


terraform {
  required_providers {
    azurerm = {
      version = "4.16.0"
      source  = "hashicorp/azurerm"
    }
  }
  required_version = ">= 0.12"
  #terraform backend confuguration 
  backend "azurerm" {
    resource_group_name  = "DSOB39"
    storage_account_name = "devsecopstfstate12"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
 }

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = false
    }
  }
}

  