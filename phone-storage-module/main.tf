# -----------------------------
# Resource Group
# -----------------------------
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# -----------------------------
# Storage Account
# -----------------------------
resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  allow_nested_items_to_be_public = false
}

# -----------------------------
# Storage Container
# -----------------------------
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}

# -----------------------------
# Azure AD User
# -----------------------------
resource "azuread_user" "phone" {
  user_principal_name   = "${var.user_name}@shaukatoktagmail.onmicrosoft.com"
  display_name          = var.user_name
  password              = var.user_password
  force_password_change = true
}

# -----------------------------
# Role Assignment (Read Only)
# -----------------------------
resource "azurerm_role_assignment" "phone_reader" {
  scope                = azurerm_storage_container.container.resource_manager_id
  role_definition_name = "Storage Blob Data Reader"
  principal_id         = azuread_user.phone.object_id
}
