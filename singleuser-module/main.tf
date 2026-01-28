resource "azuread_user" "phone" {
  user_principal_name   = "phone@${var.tenant_domain}"
  display_name          = "phone"
  mail_nickname         = "phone"
  account_enabled       = true

  password              = var.phone_password
  force_password_change = false
}
# ----------------------------
# Role Assignment (Read Only)
# ----------------------------
resource "azurerm_role_assignment" "phone_reader" {
  scope                = azurerm_storage_container.container.resource_manager_id
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = azuread_user.phone.object_id
}