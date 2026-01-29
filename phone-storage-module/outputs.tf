output "resource_group" {
  value = azurerm_resource_group.rg.name
}

output "storage_account" {
  value = azurerm_storage_account.sa.name
}

output "container" {
  value = azurerm_storage_container.container.name
}

output "user" {
  value = azuread_user.phone.user_principal_name
}
