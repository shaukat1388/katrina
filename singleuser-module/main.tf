resource "azuread_user" "phone" {
  user_principal_name   = "phone@${var.tenant_domain}"
  display_name          = "phone"
  mail_nickname         = "phone"
  account_enabled       = true

  password              = var.phone_password
  force_password_change = false
}