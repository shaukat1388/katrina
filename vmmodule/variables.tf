variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "rg-single-vm"
}

variable "vm_name" {
  default = "single-vm"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  sensitive = true
}
