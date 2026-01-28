output "container_name" {
  value = azurerm_storage_container.container.name
}

output "phone2_user" {
  value = azuread_user.phone2.user_principal_name
}
