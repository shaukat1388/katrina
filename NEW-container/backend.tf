terraform {
  backend "azurerm" {
    resource_group_name  = "ResourceGroup20"
    storage_account_name = "storageaccount20cat"
    container_name       = "NEW-container"
    key                  = "NEW-container.tfstate"
  }
}