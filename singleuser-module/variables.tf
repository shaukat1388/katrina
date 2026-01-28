variable "phone_password" {
  description = "Password for phone Azure AD user (NON-PROD ONLY)"
  type        = string
  sensitive   = true
}

variable "tenant_domain" {
  description = "Azure AD tenant primary domain"
  type        = string
}
