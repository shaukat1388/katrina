variable "user_principal_name" {
  description = "User Principal Name of the Azure AD user (phone)"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group of the storage account"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "container_name" {
  description = "Name of the storage container"
  type        = string
}
