terraform {
  backend "azurerm" {
    resource_group_name  = "ResouceGroup1"
    storage_account_name = "storageaccount10cat"
    container_name       = "scontainer1"
    key                  = "katrinavm2.tfstate"
  }
}