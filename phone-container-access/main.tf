# Get Azure AD user
data "azuread_user" "phone" {
  user_principal_name = var.user_principal_name
}

# Get storage account
data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
}

# Get storage container
data "azurerm_storage_container" "this" {
  name                 = var.container_name
  storage_account_name = data.azurerm_storage_account.this.name
}

# Assign read-only access to container
resource "azurerm_role_assignment" "container_read_only" {
  scope                = data.azurerm_storage_container.this.resource_manager_id
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = data.azuread_user.phone.object_id
}
