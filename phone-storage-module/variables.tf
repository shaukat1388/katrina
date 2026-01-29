variable "resource_group_name" {
  default = "newcontrg"
}

variable "location" {
  default = "eastus"
}

variable "storage_account_name" {
  default = "newcontsa"
}

variable "container_name" {
  default = "newcontainer"
}

variable "user_name" {
  default = "phone"
}

variable "user_password" {
  description = "Password must come from GitHub Secrets"
  sensitive   = true
}
