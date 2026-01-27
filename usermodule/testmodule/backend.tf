terraform {
  backend "azurerm" {
    resource_group_name  = "ResourceGroup1"
    storage_account_name = "storageaccount10cat"
    container_name       = "scontainer1"
    key                  = "entra-users.tfstate"
  }
}