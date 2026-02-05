variable "resource_group_name" {
  type        = string
  description = "Existing Resource Group name"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "acr_name" {
  type        = string
  description = "Existing Azure Container Registry name"
}

variable "container_group_name" {
  type        = string
}

variable "container_name" {
  type        = string
}

variable "container_port" {
  type    = number
  default = 80
}

variable "cpu" {
  type    = number
  default = 0.5
}

variable "memory" {
  type    = number
  default = 1.0
}

variable "dns_name_label" {
  type        = string
  description = "Must be globally unique"
}

variable "environment_variables" {
  type    = map(string)
  default = {}
}

variable "tags" {
  type    = map(string)
  default = {}
}
