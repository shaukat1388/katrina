output "user_object_id" {
  value = data.azuread_user.phone.object_id
}

output "container_scope" {
  value = data.azurerm_storage_container.this.resource_manager_id
}

output "role_assigned" {
  value = azurerm_role_assignment.container_read_only.role_definition_name
}