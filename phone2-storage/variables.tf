variable "resource_group_name" {
  type        = string
  description = "Existing Resource Group name"
}

variable "location" {
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  type        = string
  description = "Must be globally unique"
}

variable "container_name" {
  type        = string
  default     = "phone2container"
}

variable "phone2_password" {
  type        = string
  description = "Password for phone2 user"
  sensitive   = true
}
