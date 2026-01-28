terraform {
  backend "azurerm" {
    resource_group_name  = "ResouceGroup1"
    storage_account_name = "storageaccount10cat"
    container_name       = "NEW-container"
    key                  = "NEW-container.tfstate"
  }
}