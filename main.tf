terraform {
 required_providers {
   azurerm = {
     source = "hashicorp/azurerm"
     version = "~>2.0"
   }
 }
 backend "azurerm" {
   resource_group_name = "myResourceGroup"
   storage_account_name = "myresourcegrouptfstate"
   container_name = "tfstate"
   key = "codelab.microsoft.tfstate"
 }
}

provider "azurerm" {
 features {}
}