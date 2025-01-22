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
}

provider "azurerm" {
    features {}
}