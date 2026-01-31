variable "location" {}
variable "resource_group_name" {}

variable "vnet_name" {}
variable "vnet_address_space" {
  type = list(string)
}

variable "subnet_name" {}
variable "subnet_address_space" {
  type = list(string)
}

variable "nsg_name" {}
variable "public_ip_name" {}
variable "nic_name" {}

variable "vm_name" {}
variable "vm_size" {}

variable "admin_username" {}
variable "ssh_public_key" {}

variable "os_disk_name" {}

#variable "zone" {
#  type = string
#}